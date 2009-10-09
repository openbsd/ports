# $OpenBSD: Makefile,v 1.7 2009/10/09 13:04:25 giovanni Exp $

COMMENT =	powerful and simple qt4 editor

V =		26.0.0
DISTNAME =	tea-${V}
PKGNAME =	teaqt-${V}
CATEGORIES =	editors x11
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX =	.tar.bz2

HOMEPAGE =	http://tea-editor.sf.net/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ICE SM X11 Xext Xi Xinerama Xrender \
		c expat fontconfig freetype glib-2.0 gobject-2.0 \
		gthread-2.0 iconv intl m QtGui QtScript \
		QtSvg QtXml png pthread stdc++ z

LIB_DEPENDS =	aspell.>=16:aspell-*:textproc/aspell/core

MODULES =	x11/qt4
CONFIGURE_ENV =	USE_ASPELL=true USE_HUNSPELL=false

USE_X11 =	Yes
NO_REGRESS =	Yes

do-configure:
	cd ${WRKSRC} && qmake4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/tea ${PREFIX}/bin/tea

.include <bsd.port.mk>
