COMMENT-main = 	PIN or passphrase entry dialog (ncurses interface)
COMMENT-gnome3 =PIN or passphrase entry dialog (GNOME 3 interface)
COMMENT-qt =	PIN or passphrase entry dialog (Qt6 interface)

VERSION = 	1.3.3
DISTNAME = 	pinentry-${VERSION}
CATEGORIES = 	security
EXTRACT_SUFX =	.tar.bz2

SITES = 	${SITE_GNUPG:=pinentry/}

HOMEPAGE = 	https://www.gnupg.org/related_software/pinentry/index.en.html

MAINTAINER = 	Antoine Jacoutot <ajacoutot@openbsd.org>, \
		Jeremie Courreges-Anglas <jca@wxcvbn.org>

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

WANTLIB-qt += ${WANTLIB}
WANTLIB-qt += ${COMPILER_LIBCXX} Qt6Core Qt6Gui Qt6Widgets m
WANTLIB-qt += KF6GuiAddons KF6WindowSystem

LIB_DEPENDS-qt =	${LIB_DEPENDS} \
			devel/kf6/kguiaddons \
			devel/kf6/kwindowsystem \
			x11/qt6/qtbase
RUN_DEPENDS-qt =	${FULLPKGNAME-main}:${FULLPKGPATH-main} \
			devel/desktop-file-utils

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include -D_XOPEN_SOURCE_EXTENDED" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PICFLAG="${PICFLAG}"
CONFIGURE_ARGS = 	--enable-pinentry-curses \
			--enable-pinentry-tty \
			--disable-pinentry-qt4 \
			--disable-pinentry-emacs \
			--disable-pinentry-gtk2 \
			--disable-pinentry-qt5 \
			--disable-pinentry-efl \
			--disable-pinentry-tqt \
			--disable-pinentry-fltk

MULTI_PACKAGES =	-main -gnome3 -qt

PSEUDO_FLAVORS =	no_gnome3 no_qt bootstrap
FLAVOR ?=		no_gnome3 no_qt bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gnome3}
CONFIGURE_ARGS +=	--disable-pinentry-gnome3
.endif


.if !${BUILD_PACKAGES:M-qt}
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

# pinentry.png is only installed by the qt install targets;
# to prevent juggling with PFRAG and PLIST conflict or to create a dedicated
# subpackage, just install it unconditionally
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/qt/icons/pinentry.png \
		${PREFIX}/share/pixmaps/

.include <bsd.port.mk>
