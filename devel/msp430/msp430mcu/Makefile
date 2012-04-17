# $OpenBSD: Makefile,v 1.9 2012/04/17 12:22:02 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

DISTNAME=	msp430mcu-20120406
PKGNAME=	${DISTNAME}

CONFIGURE_STYLE=# This space intentionally left blank

RUN_DEPENDS=	devel/msp430/libc>=20120224

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} TRUEPREFIX=${TRUEPREFIX} \
			/bin/sh scripts/install.sh ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
