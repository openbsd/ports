# $OpenBSD: Makefile,v 1.1.1.1 2009/06/22 20:51:10 sthen Exp $

COMMENT =		easy to use LaTeX and ConTeXt editor

V = 			20090618
DISTNAME =		texworks-svn-${V}
PKGNAME = 		texworks-${V}
CATEGORIES =		editors print
HOMEPAGE =		http://www.tug.org/texworks/
MAINTAINER =		Edd Barrett <vext01@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		ICE SM X11 Xext Xi Xinerama Xrender c \
			fontconfig freetype glib-2.0 gthread-2.0 iconv intl \
			m png pthread stdc++ z expat gobject-2.0

# No official release as of yet, hosting my own dist
MASTER_SITES =		http://students.dec.bmth.ac.uk/ebarrett/distfiles/

WRKDIST = 		${WRKDIR}/texworks-svn

MODULES =		x11/qt4
LIB_DEPENDS =		hunspell-1.2::textproc/hunspell \
			dbus-1::x11/dbus \
			poppler::print/poppler \
			poppler-qt4::print/poppler,-qt4 \
			QtDBus,QtGui,QtXml::x11/qt4
RUN_DEPENDS = 		:texlive_base-*:print/texlive/base

USE_X11 =		Yes
USE_GMAKE =		Yes

NO_REGRESS =		Yes

do-configure:
	cd ${WRKSRC} && qmake4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/texworks ${PREFIX}/bin

.include <bsd.port.mk>
