COMMENT =	simple ADS-B Mode-S decoder for RTLSDR devices
DISTNAME =	${GH_PROJECT}-0.0.0.20260215
CATEGORIES =	comms

# No releases...
GH_ACCOUNT =	antirez
GH_PROJECT =	dump1090
GH_COMMIT =	efe64db3c6ba1520291331628a33c1e208e851a6

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread rtlsdr

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
