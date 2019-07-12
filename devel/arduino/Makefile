# $OpenBSD: Makefile,v 1.20 2019/07/12 21:02:13 sthen Exp $

COMMENT=	open-source electronics prototyping platform

V=		1.8.7
AVR_V=		1.6.23
EPOCH=		0
GH_ACCOUNT=	arduino
GH_PROJECT=	arduino
GH_TAGNAME=	${V}

DISTFILES+=	${DISTNAME}${EXTRACT_SUFX} \
		ArduinoCore-avr-${AVR_V}${EXTRACT_SUFX}:0

CATEGORIES=	devel
HOMEPAGE=	https://www.arduino.cc/

MASTER_SITES0=	https://github.com/${GH_ACCOUNT}/ArduinoCore-avr/archive/${AVR_V}/

# arduino core + libraries: LGPLv2.1
# frontend application: GPLv2 (not shipped yet)
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/avr/binutils \
		devel/avr/gcc \
		devel/avr/libc \
		devel/avrdude

NO_BUILD=       Yes
NO_TEST=	Yes
PKG_ARCH=       *
WRKDIST=	${WRKDIR}/Arduino-${V}
AVR_WRKDIST=	${WRKDIR}/ArduinoCore-avr-${AVR_V}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	cp -r ${WRKSRC}/build/shared/examples/* ${PREFIX}/share/examples/arduino
	cp -r ${WRKSRC}/{license.txt,README.md} ${PREFIX}/share/doc/arduino
	cp -r ${AVR_WRKDIST}/* ${PREFIX}/share/arduino
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	find ${PREFIX} -type f -name \*.orig -exec rm '{}' \;

.include <bsd.port.mk>
