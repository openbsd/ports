# $OpenBSD: Makefile,v 1.3 2011/11/09 09:17:05 sthen Exp $

COMMENT =		unicode sans-serif/monospace TrueType fonts from Ubuntu

DISTNAME =		ubuntu-font-family-0.80
REVISION =		0
PKGNAME =		${DISTNAME:S,-family,s,}

CATEGORIES =		fonts

HOMEPAGE =		http://font.ubuntu.com/

MAINTAINER =		Tim van der Molen <tbvdm@xs4all.nl>

# Ubuntu Font Licence 1.0
# http://font.ubuntu.com/ufl/ubuntu-font-licence-1.0.txt
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}download/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/lib/X11/fonts/ubuntu
DOCDIR =		${PREFIX}/share/doc/ubuntu-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*txt ${DOCDIR}

.include <bsd.port.mk>
