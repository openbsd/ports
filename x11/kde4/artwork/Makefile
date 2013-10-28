# $OpenBSD: Makefile,v 1.16 2013/10/28 00:28:38 zhuk Exp $

COMMENT-main =		KDE graphics, styles and screensavers
COMMENT-mono =		one-colour KDE icon theme
COMMENT-nuvola =	KDE icon theme
DISTNAME =		kdeartwork-${MODKDE4_VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-mono =		mono-icon-theme-${MODKDE4_VERSION}
PKGNAME-nuvola =	nuvola-icon-theme-${MODKDE4_VERSION}
PKG_ARCH-mono =		*
PKG_ARCH-nuvola =	*
REVISION-main =		1
REVISION-mono =		0
REVISION-nuvola =	0

MODKDE4_USE =		workspace

WANTLIB-mono =
WANTLIB-nuvola =
WANTLIB-main =  ${WANTLIB} c m pthread stdc++
WANTLIB-main += GL GLU ICE SM X11 Xext Xt
WANTLIB-main += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-main += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kdecorations ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB-main += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/kscreensaver
WANTLIB-main += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += soprano

MULTI_PACKAGES =	-main -mono -nuvola

BUILD_DEPENDS =		math/eigen2 \
			x11/xscreensaver

RUN_DEPENDS-mono =	x11/gtk+2,-guic
RUN_DEPENDS-nuvola =	x11/gtk+2,-guic
RUN_DEPENDS-main =	x11/xscreensaver

LIB_DEPENDS-mono =
LIB_DEPENDS-nuvola =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
