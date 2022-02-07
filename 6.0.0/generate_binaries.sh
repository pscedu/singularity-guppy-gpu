#!/bin/bash

TOOLS=(guppy_aligner	       guppy_basecaller
guppy_barcoder	       guppy_basecaller_duplex
guppy_basecall_client  guppy_basecaller_supervisor
guppy_basecall_server)

cat << EOF > template
#!/bin/bash

VERSION=6.0.0
PACKAGE=guppy
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

PERSISTENT_FILE_STORAGE=/ocean
if [ -d \$PERSISTENT_FILE_STORAGE ]; then
	OPTIONS="-B \$PERSISTENT_FILE_STORAGE"
fi

if [ -d /local ]; then
	OPTIONS=\$OPTIONS" -B /local"
fi

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
