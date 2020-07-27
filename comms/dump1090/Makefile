# $OpenBSD: Makefile,v 1.1.1.1 2020/07/27 16:45:31 bcallah Exp $

COMMENT =	simple ADS-B Mode-S decoder for RTLSDR devices
DISTNAME =	${GH_PROJECT}-0.0.0.20200203
CATEGORIES =	comms

# No releases...
GH_ACCOUNT =	antirez
GH_PROJECT =	dump1090
GH_COMMIT =	de61bd564f1aa929bae414a70e421acd0b81789a

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread rtlsdr usb-1.0

LIB_DEPENDS =	comms/rtl-sdr

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}"

NO_TEST =	Yes

# Easier web page access in standalone mode
do-gen:
	sed -i 's,gmap.html,${LOCALBASE}/share/dump1090/gmap.html,g' \
		${WRKSRC}/dump1090.c

# No install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dump1090 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/dump1090/tools
	${INSTALL_DATA} ${WRKSRC}/gmap.html ${PREFIX}/share/dump1090
	${INSTALL_DATA} ${WRKSRC}/tools/debug.html \
		${PREFIX}/share/dump1090/tools

.include <bsd.port.mk>
