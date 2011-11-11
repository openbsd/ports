# $OpenBSD: Makefile,v 1.7 2011/11/11 17:24:12 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

DISTNAME=	msp430mcu-20110613
REVISION=	1

LTS_PATCHES=	msp430mcu-20110613-sf3379189.patch \
		msp430mcu-20110613-sf3384550.patch \
		msp430mcu-20110613-sf3400714.patch

CONFIGURE_STYLE=#empty

RUN_DEPENDS=	devel/msp430/libc>=20110612

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} /bin/sh scripts/install.sh ${PREFIX}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
