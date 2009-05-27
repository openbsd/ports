# $OpenBSD: Makefile,v 1.6 2009/05/27 13:43:09 benoit Exp $

COMMENT =		word-based diff program

DISTNAME=		dwdiff-1.5.2
CATEGORIES =		sysutils textproc

HOMEPAGE =		http://os.ghalkes.nl/dwdiff.html

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread

MASTER_SITES =		http://os.ghalkes.nl/dist/
EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext

LIB_DEPENDS =		icudata,icui18n,icuuc::textproc/icu4c

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS =		Yes

LANGS =			de nl

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
