# $OpenBSD: Makefile,v 1.22 2020/03/20 16:44:22 naddy Exp $

COMMENT=	open-source electronics prototyping platform

V=		1.8.10
AVR_V=		1.8.2
ADAFRUIT_BOARDS_V= 0dad98d190ebd0e22e7be08f114d27a94784b7d8
GH_ACCOUNT=	arduino
GH_PROJECT=	arduino
GH_TAGNAME=	${V}
EPOCH=		0

DISTFILES+=	${DISTNAME}${EXTRACT_SUFX} \
		ArduinoCore-avr-{arduino/ArduinoCore-avr/archive/}${AVR_V}${EXTRACT_SUFX}:0 \
		Adafruit_Arduino_Boards-{adafruit/Adafruit_Arduino_Boards/archive/}${ADAFRUIT_BOARDS_V}${EXTRACT_SUFX}:0

CATEGORIES=	devel
HOMEPAGE=	https://www.arduino.cc/

MASTER_SITES0=	https://github.com/

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
ADAFRUIT_WRKDIST= ${WRKDIR}/Adafruit_Arduino_Boards-${ADAFRUIT_BOARDS_V}

post-extract:
	cd ${ADAFRUIT_WRKDIST} && tar -cf - bootloaders libraries variants | \
		(cd ${AVR_WRKDIST} && tar xf -)
	cat ${ADAFRUIT_WRKDIST}/boards.txt >> ${AVR_WRKDIST}/boards.txt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	cp -r ${WRKSRC}/build/shared/examples/* ${PREFIX}/share/examples/arduino
	cp -r ${WRKSRC}/{license.txt,README.md} ${PREFIX}/share/doc/arduino
	cp -r ${AVR_WRKDIST}/* ${PREFIX}/share/arduino
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	find ${PREFIX} -type f -name \*.orig -delete

.include <bsd.port.mk>
