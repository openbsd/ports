COMMENT=	Bootloader for Apple Silicon

GH_ACCOUNT=	AsahiLinux
GH_PROJECT=	m1n1
GH_TAGNAME=	v1.1.6

CATEGORIES=	sysutils
HOMEPAGE=	https://github.com/AsahiLinux/m1n1
MAINTAINER=	Tobias Heider <tobhe@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS+=	devel/arm-none-eabi/gcc-linaro,aarch64
MAKE_ENV+=	CROSS_COMPILE="aarch64-none-elf-"

USE_GMAKE=	Yes
NO_TEST=	Yes

FILES=\
	m1n1-raw.elf \
	m1n1.bin \
	m1n1.macho \
	m1n1.elf \

do-build:
	cd ${WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		RELEASE=1 ARCH=aarch64-none-elf- \
	        -f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/m1n1
	cd ${WRKSRC}/build && cp ${FILES} ${PREFIX}/share/m1n1/

.include <bsd.port.mk>
