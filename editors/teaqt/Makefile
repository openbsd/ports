# $OpenBSD: Makefile,v 1.11 2010/10/24 21:16:25 ajacoutot Exp $

COMMENT =	powerful and simple qt4 editor

V =		28.1.3
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

LIB_DEPENDS =	::textproc/aspell/core
WANTLIB += c m pthread stdc++ z QtGui QtScript QtSvg QtXml aspell

MODULES =	x11/qt4
CONFIGURE_ENV =	USE_ASPELL=true USE_HUNSPELL=false

NO_REGRESS =	Yes

do-configure:
	cd ${WRKSRC} && qmake4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/tea ${PREFIX}/bin/tea

.include <bsd.port.mk>
