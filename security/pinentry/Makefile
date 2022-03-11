COMMENT-main = 	PIN or passphrase entry dialog (ncurses interface)
COMMENT-gnome3 =PIN or passphrase entry dialog (GNOME 3 interface)
COMMENT-qt5 =	PIN or passphrase entry dialog (Qt5 interface)

VERSION = 	1.2.0
DISTNAME = 	pinentry-${VERSION}
CATEGORIES = 	security
EXTRACT_SUFX =	.tar.bz2
REVISION =	0

MASTER_SITES = 	${MASTER_SITE_GNUPG:=pinentry/}

HOMEPAGE = 	https://www.gnupg.org/related_software/pinentry/index.en.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c assuan gio-2.0 glib-2.0 gobject-2.0 gpg-error iconv intl
WANTLIB += curses secret-1

# C++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		security/libassuan \
			x11/gnome/libsecret

WANTLIB-gnome3 += ${WANTLIB}
WANTLIB-gnome3 += atk-1.0 cairo cairo-gobject gck-1 gcr-base-3 gcr-ui-3
WANTLIB-gnome3 += gdk-3 gdk_pixbuf-2.0 gtk-3 harfbuzz p11-kit pango-1.0
WANTLIB-gnome3 += pangocairo-1.0

LIB_DEPENDS-gnome3 =	${LIB_DEPENDS} \
			x11/gnome/gcr

WANTLIB-qt5 += ${WANTLIB}
WANTLIB-qt5 += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5X11Extras
WANTLIB-qt5 += X11 m

LIB_DEPENDS-qt5 =	${LIB_DEPENDS} \
			x11/qt5/qtbase \
			x11/qt5/qtx11extras

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include -D_XOPEN_SOURCE_EXTENDED" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS = 	--enable-pinentry-curses \
			--disable-pinentry-tty \
			--disable-pinentry-emacs \
			--disable-pinentry-gtk2 \
			--disable-pinentry-efl \
			--disable-pinentry-tqt \
			--disable-pinentry-fltk

MULTI_PACKAGES =	-main -gnome3 -qt5

PSEUDO_FLAVORS=		no_gnome3 no_qt5 bootstrap
FLAVOR?=		no_gnome3 no_qt5 bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gnome3}
CONFIGURE_ARGS +=	--disable-pinentry-gnome3
.endif

.if !${BUILD_PACKAGES:M-qt5}
CONFIGURE_ARGS +=	--disable-pinentry-qt
CONFIGURE_ARGS +=	--disable-pinentry-qt5
.endif

# http://pkgs.fedoraproject.org/cgit/pinentry.git/tree/pinentry-wrapper
post-install:
	rm ${PREFIX}/bin/pinentry
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${FILESDIR}/pinentry-wrapper.in ${PREFIX}/bin/pinentry

.include <bsd.port.mk>
