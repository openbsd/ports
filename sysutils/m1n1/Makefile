# if updated, sysutils/firmware/m1n1-uboot must be updated too

COMMENT=	Bootloader for Apple Silicon

GH_ACCOUNT=	AsahiLinux
GH_PROJECT=	m1n1
GH_TAGNAME=	v1.1.6
REVISION=	1

CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/AsahiLinux/m1n1
MAINTAINER=	Tobias Heider <tobhe@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+=	archivers/zopfli \
		devel/arm-none-eabi/gcc-linaro,aarch64 \
		graphics/ImageMagick

MAKE_ENV+=	CROSS_COMPILE="aarch64-none-elf-"

USE_GMAKE=	Yes
NO_TEST=	Yes

FILES=\
	m1n1-raw.elf \
	m1n1.bin \
	m1n1.macho \
	m1n1.elf

LICENSE_FILES=\
	LICENSE \
	3rdparty_licenses/*

do-build:
	rm ${WRKSRC}/data/bootlogo_128.png ${WRKSRC}/data/bootlogo_256.png
	convert -background none -resize 128x128 -gravity center -extent 128x128 \
	    ${FILESDIR}/logo.svg ${WRKSRC}/data/bootlogo_128.png
	convert -background none -resize 256x256 -gravity center -extent 256x256 \
	    ${FILESDIR}/logo.svg ${WRKSRC}/data/bootlogo_256.png
	zopflipng -ym ${WRKSRC}/data/bootlogo_256.png ${WRKSRC}/data/bootlogo_256.png
	cd ${WRKSRC}/data && ./makelogo.sh
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		RELEASE=1 ARCH=aarch64-none-elf- \
	        -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/m1n1
	cd ${WRKSRC}/build && cp ${FILES} ${PREFIX}/share/m1n1/
	cd ${WRKSRC} && for f in ${LICENSE_FILES}; do \
	    (cat "$${f}"; echo) >> ${PREFIX}/share/m1n1/m1n1.LICENSE; done

.include <bsd.port.mk>
