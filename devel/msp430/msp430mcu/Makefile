# $OpenBSD: Makefile,v 1.11 2012/04/17 13:01:56 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

TOOL=		msp430mcu
TOOL_V= 	${LTS_V}

PKGNAME=	${DISTNAME} # We don't want 'msp430' prepended.

PATCHFILES=	# This space intentionally left blank.
CONFIGURE_STYLE=# This space intentionally left blank

RUN_DEPENDS=	devel/msp430/libc>=20120224

NO_BUILD=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} TRUEPREFIX=${TRUEPREFIX} \
			/bin/sh scripts/install.sh ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
