# $OpenBSD: Makefile,v 1.1.1.1 2012/07/13 08:38:09 edd Exp $

COMMENT =	unicode library for objective caml

CATEGORIES =	devel

V =		0.8.3
DISTNAME =	camomile-${V}
PKGNAME =	ocaml-camomile-${V}
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=camomile/}

HOMEPAGE =	http://camomile.sourceforge.net/

MAINTAINER =	Christopher Zimmermann <madroach@gmerlin.de>

# LGPL >= 2
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib

CONFIGURE_STYLE = gnu dest

NO_REGRESS =	Yes
USE_GMAKE =	Yes

ALL_TARGET =	all dochtml

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camomile/html/
	${INSTALL_DATA} ${WRKSRC}/Changes ${PREFIX}/share/doc/camomile/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/camomile/
	${INSTALL_DATA} ${WRKSRC}/dochtml/* \
		${PREFIX}/share/doc/camomile/html/

.include <bsd.port.mk>
