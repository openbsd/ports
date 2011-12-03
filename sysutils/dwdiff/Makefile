# $OpenBSD: Makefile,v 1.14 2011/12/03 06:24:57 benoit Exp $

COMMENT =		word-based diff program

DISTNAME =		dwdiff-2.0.2
CATEGORIES =		sysutils textproc

HOMEPAGE =		http://os.ghalkes.nl/dwdiff.html

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c icudata icui18n icuuc m pthread

MASTER_SITES =		http://os.ghalkes.nl/dist/
EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext

LIB_DEPENDS =		textproc/icu4c

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LINGUAS="nl de fr ru"

USE_GROFF =		Yes
NO_REGRESS =		Yes

LANGS =			de nl fr ru

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
