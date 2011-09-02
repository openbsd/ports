# $OpenBSD: Makefile,v 1.1.1.1 2011/09/02 07:06:21 jasper Exp $

PKG_ARCH=	*

COMMENT=	C headers and binutils linker scripts for msp430

DISTNAME=	msp430mcu-20110613

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mspgcc/}

CONFIGURE_STYLE=#empty

RUN_DEPENDS=	devel/msp430/libc>=20110612

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC} && \
		MSP430MCU_ROOT=${WRKSRC} /bin/sh scripts/install.sh ${PREFIX}
	${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/msp430/

.include <bsd.port.mk>
