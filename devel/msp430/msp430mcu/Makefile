# $OpenBSD: Makefile,v 1.14 2012/05/04 08:58:55 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

TOOL=		msp430mcu
TOOL_V= 	${LTS_V}

# msp430mcu-20120406-sf3522088.patch doesn't apply to us, since ${BINDIR}
# is already created by mtree.

CONFIGURE_STYLE=# This space intentionally left blank

RUN_DEPENDS=	devel/msp430/libc>=20120224

NO_BUILD=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} TRUEPREFIX=${TRUEPREFIX} \
			/bin/sh scripts/install.sh ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
