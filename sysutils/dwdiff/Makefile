# $OpenBSD: Makefile,v 1.24 2017/12/04 21:09:39 espie Exp $

COMMENT =		word-based diff program

DISTNAME =		dwdiff-2.0.9
REVISION =		1
CATEGORIES =		sysutils textproc
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE =		http://os.ghalkes.nl/dwdiff.html

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c iconv icudata icui18n icuuc intl m pthread

MASTER_SITES =		http://os.ghalkes.nl/dist/
EXTRACT_SUFX =		.tgz

BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		devel/gettext \
			textproc/icu4c

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LINGUAS="nl de fr es"

NO_TEST =		Yes

LANGS =			de nl fr es

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dwdiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/dwdiff.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dwdiff
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/dwdiff
.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/${l}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/po/${l}.mo \
		${PREFIX}/share/locale/${l}/LC_MESSAGES
.endfor

.include <bsd.port.mk>
