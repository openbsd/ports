# $OpenBSD: Makefile,v 1.21 2014/07/09 20:03:23 zhuk Exp $

COMMENT-main =		KDE graphics, styles and screensavers
COMMENT-emoticons =	KDE emoticons
COMMENT-mono =		one-colour KDE icon theme
COMMENT-nuvola =	KDE icon theme
DISTNAME =		kdeartwork-${MODKDE4_VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-emoticons =	kde-emoticons-${MODKDE4_VERSION}
PKGNAME-mono =		mono-icon-theme-${MODKDE4_VERSION}
PKGNAME-nuvola =	nuvola-icon-theme-${MODKDE4_VERSION}
PKG_ARCH-emoticons =	*
PKG_ARCH-mono =		*
PKG_ARCH-nuvola =	*

MODKDE4_USE =		workspace

WANTLIB-emoticons =
WANTLIB-mono =
WANTLIB-nuvola =
WANTLIB-main =  ${WANTLIB} c m pthread
WANTLIB-main += GL GLU ICE SM X11 Xext Xt
WANTLIB-main += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB-main += lib/qt4/QtOpenGL lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB-main += ${KDE4LIB}/kdecorations ${KDE4LIB}/kdeui ${KDE4LIB}/kexiv2
WANTLIB-main += ${KDE4LIB}/kio ${KDE4LIB}/kparts ${KDE4LIB}/kscreensaver
WANTLIB-main += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB-main += soprano

MULTI_PACKAGES =	-main -mono -nuvola -emoticons

BUILD_DEPENDS =		math/eigen2 \
			x11/xscreensaver

RUN_DEPENDS-emoticons =
RUN_DEPENDS-mono =	x11/gtk+2,-guic
RUN_DEPENDS-nuvola =	x11/gtk+2,-guic
RUN_DEPENDS-main =	x11/xscreensaver

LIB_DEPENDS-emoticons =
LIB_DEPENDS-mono =
LIB_DEPENDS-nuvola =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			${MODKDE4_DEP_DIR}/libkexiv2>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
