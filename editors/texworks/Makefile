# $OpenBSD: Makefile,v 1.7 2010/07/21 21:14:47 edd Exp $

COMMENT =		easy to use LaTeX and ConTeXt editor

DISTNAME =		texworks-0.2.3
REVISION = 		0
CATEGORIES =		editors print
HOMEPAGE =		http://www.tug.org/texworks/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		QtDBus QtGui QtXml c dbus-1 hunspell-1.2 m poppler \
			poppler-qt4 pthread stdc++ z

MASTER_SITES =		http://texworks.googlecode.com/files/

MODULES =		x11/qt4
LIB_DEPENDS =		::textproc/hunspell \
			::x11/dbus \
			::print/poppler,-qt4 \
			::x11/qt4
RUN_DEPENDS = 		:texlive_base-*:print/texlive/base

USE_X11 =		Yes
USE_GMAKE =		Yes

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/TWUtils.cpp

do-configure:
	cd ${WRKSRC} && qmake4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/texworks ${PREFIX}/bin

.include <bsd.port.mk>
