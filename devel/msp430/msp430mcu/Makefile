# $OpenBSD: Makefile,v 1.3 2011/09/05 08:25:48 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

DISTNAME=	msp430mcu-20110613
REVISION=	0

PATCHFILES=	msp430mcu-20110613-sf3400714.patch:1 \
		msp430mcu-20110613-sf3379189.patch:1 \
		msp430mcu-20110613-sf3384550.patch:1

CONFIGURE_STYLE=#empty

RUN_DEPENDS=	devel/msp430/libc>=20110612

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} /bin/sh scripts/install.sh ${PREFIX}
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
