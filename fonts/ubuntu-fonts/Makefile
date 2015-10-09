# $OpenBSD: Makefile,v 1.6 2015/10/09 22:16:51 tim Exp $

COMMENT =		unicode sans-serif/monospace TrueType fonts from Ubuntu

DISTNAME =		ubuntu-font-family-0.83
PKGNAME =		${DISTNAME:S,-family,s,}

CATEGORIES =		fonts

HOMEPAGE =		http://font.ubuntu.com/

MAINTAINER =		Tim van der Molen <tim@openbsd.org>

# Ubuntu Font Licence 1.0
# http://font.ubuntu.com/ufl/ubuntu-font-licence-1.0.txt
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}download/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/ubuntu
DOCDIR =		${PREFIX}/share/doc/ubuntu-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*txt ${DOCDIR}

.include <bsd.port.mk>
