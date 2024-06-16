COMMENT-main = 	PIN or passphrase entry dialog (ncurses interface)
COMMENT-gnome3 =PIN or passphrase entry dialog (GNOME 3 interface)
COMMENT-qt5 =	PIN or passphrase entry dialog (Qt5 interface)
COMMENT-qt6 =	PIN or passphrase entry dialog (Qt6 interface)
REVISION-qt6 =	0

VERSION = 	1.3.0
DISTNAME = 	pinentry-${VERSION}
CATEGORIES = 	security
EXTRACT_SUFX =	.tar.bz2

SITES = 	${SITE_GNUPG:=pinentry/}

HOMEPAGE = 	https://www.gnupg.org/related_software/pinentry/index.en.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c assuan gio-2.0 glib-2.0 gobject-2.0 gpg-error iconv intl
WANTLIB += curses secret-1

# C++11
COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes

LIB_DEPENDS =		security/libassuan \
			x11/gnome/libsecret

WANTLIB-gnome3 += ${WANTLIB}
WANTLIB-gnome3 += gck-2 gcr-4 p11-kit

LIB_DEPENDS-gnome3 =	${LIB_DEPENDS} \
			x11/gnome/gcr4

WANTLIB-qt5 += ${WANTLIB}
WANTLIB-qt5 += ${COMPILER_LIBCXX} KF5WaylandClient Qt5Core Qt5Gui
WANTLIB-qt5 += Qt5Widgets Qt5X11Extras X11 m

LIB_DEPENDS-qt5 =	${LIB_DEPENDS} \
			devel/kf5/kwayland \
			x11/qt5/qtbase \
			x11/qt5/qtx11extras

WANTLIB-qt6 += ${WANTLIB}
WANTLIB-qt6 += ${COMPILER_LIBCXX} Qt6Core Qt6Gui Qt6Widgets m
WANTLIB-qt6 += KF6GuiAddons KF6WindowSystem

LIB_DEPENDS-qt6 =	${LIB_DEPENDS} \
			devel/kf6/kguiaddons \
			devel/kf6/kwindowsystem \
			x11/qt6/qtbase

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include -D_XOPEN_SOURCE_EXTENDED" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS = 	--enable-pinentry-curses \
			--disable-pinentry-qt4 \
			--disable-pinentry-tty \
			--disable-pinentry-emacs \
			--disable-pinentry-gtk2 \
			--disable-pinentry-efl \
			--disable-pinentry-tqt \
			--disable-pinentry-fltk

MULTI_PACKAGES =	-main -gnome3 -qt5 -qt6

PSEUDO_FLAVORS =	no_gnome3 no_qt5 no_qt6 bootstrap
FLAVOR ?=		no_gnome3 no_qt5 no_qt6 bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gnome3}
CONFIGURE_ARGS +=	--disable-pinentry-gnome3
.endif

.if !${BUILD_PACKAGES:M-qt5}
CONFIGURE_ARGS +=	--disable-pinentry-qt5
.endif

.if !${BUILD_PACKAGES:M-qt6}
# XXX could use the followings once we have them available as packages:
# devel/kf6/kguiaddons
# devel/kf6/kwindowsystem
CONFIGURE_ARGS +=	--disable-pinentry-qt
.endif

# http://pkgs.fedoraproject.org/cgit/pinentry.git/tree/pinentry-wrapper
post-install:
	rm ${PREFIX}/bin/pinentry
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${FILESDIR}/pinentry-wrapper.in ${PREFIX}/bin/pinentry

.include <bsd.port.mk>
