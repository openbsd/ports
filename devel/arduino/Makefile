COMMENT=	open-source electronics prototyping platform

V=		1.8.19
AVR_V=		1.8.5
EX_V=		4ee37f686d647733dd46fac3074b9011e7dc5ef9
ADAFRUIT_BOARDS_V= 3751f438bb2cff9b5970d1056c4a2e91876a93f0
GH_ACCOUNT=	arduino
GH_PROJECT=	arduino
GH_TAGNAME=	${V}
EPOCH=		0

DISTFILES+=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES.extra = \
		ArduinoCore-avr-{arduino/ArduinoCore-avr/archive/}${AVR_V}${EXTRACT_SUFX} \
		Adafruit_Arduino_Boards-{adafruit/Adafruit_Arduino_Boards/archive/}${ADAFRUIT_BOARDS_V}${EXTRACT_SUFX} \
		arduino-examples-{arduino/arduino-examples/archive/}${EX_V}${EXTRACT_SUFX}

CATEGORIES=	devel
HOMEPAGE=	https://www.arduino.cc/

SITES.extra=	https://github.com/

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
EX_WRKDIST=	${WRKDIR}/arduino-examples-${EX_V}/examples

post-extract:
	cd ${ADAFRUIT_WRKDIST} && tar -cf - bootloaders libraries variants | \
		(cd ${AVR_WRKDIST} && tar xf -)
	cat ${ADAFRUIT_WRKDIST}/boards.txt >> ${AVR_WRKDIST}/boards.txt

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc,examples}/arduino
	cp -r ${EX_WRKDIST}/* ${PREFIX}/share/examples/arduino
	cp -r ${WRKSRC}/{license.txt,README.md} ${PREFIX}/share/doc/arduino
	cp -r ${AVR_WRKDIST}/* ${PREFIX}/share/arduino
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	find ${PREFIX} -type f -name \*.orig -delete

.include <bsd.port.mk>
