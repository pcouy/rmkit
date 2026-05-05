OUTDIR=artifacts
PACKAGE="${1}"
TARGET=${TARGET:-rm}
FBINK=${FBINK}
CROSS_TC=${CROSS_TC:-arm-linux-gnueabihf}
mkdir ${OUTDIR}
docker run -i --rm -v "${PWD}/${OUTDIR}:/mnt/artifacts" rmkit:${TARGET} /bin/bash << COMMANDS
mkdir -p src/build
CROSS_TC=${CROSS_TC} FBINK=${FBINK} TARGET=${TARGET} make ${PACKAGE}
mkdir -p /mnt/artifacts/${TARGET}/
cp -r src/build/* /mnt/artifacts/${TARGET}/
chown -R $(id -u):$(id -u) /mnt/artifacts
COMMANDS

