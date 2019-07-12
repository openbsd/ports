# $OpenBSD: Makefile,v 1.26 2019/07/12 21:15:36 sthen Exp $

COMMENT-main = 	PIN or passphrase entry dialog (ncurses interface)
COMMENT-gtk2 = 	PIN or passphrase entry dialog (gtk2 interface)
COMMENT-gnome3 =PIN or passphrase entry dialog (GNOME 3 interface)

VERSION = 	1.1.0
REVISION =	0
DISTNAME = 	pinentry-${VERSION}
CATEGORIES = 	security
EXTRACT_SUFX =	.tar.bz2

PKGNAME-main = 	${DISTNAME}
PKGNAME-gtk2 = 	pinentry-gtk2-${VERSION}
PKGNAME-gnome3 =pinentry-gnome3-${VERSION}

MASTER_SITES = 	${MASTER_SITE_GNUPG:=pinentry/}

HOMEPAGE = 	https://www.gnupg.org/related_software/pinentry/index.en.html

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c assuan gio-2.0 glib-2.0 gobject-2.0 gpg-error iconv intl
WANTLIB += curses secret-1

LIB_DEPENDS =		security/libassuan \
			x11/gnome/libsecret

WANTLIB-gtk2 += ${WANTLIB}
WANTLIB-gtk2 += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gtk2 += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gtk2 += gdk_pixbuf-2.0 gtk-x11-2.0 pango-1.0 pangocairo-1.0
WANTLIB-gtk2 += pangoft2-1.0 z

LIB_DEPENDS-gtk2 = 	${LIB_DEPENDS} \
			x11/gtk+2

WANTLIB-gnome3 += ${WANTLIB}
WANTLIB-gnome3 += atk-1.0 cairo cairo-gobject gck-1 gcr-base-3 gcr-ui-3
WANTLIB-gnome3 += gdk-3 gdk_pixbuf-2.0 gtk-3 p11-kit pango-1.0 pangocairo-1.0

LIB_DEPENDS-gnome3 =	${LIB_DEPENDS} \
			x11/gnome/gcr

CONFIGURE_STYLE = 	gnu
CONFIGURE_ENV = 	CPPFLAGS="-I${LOCALBASE}/include -D_XOPEN_SOURCE_EXTENDED" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS = 	--enable-pinentry-curses \
			--disable-pinentry-qt \
			--disable-pinentry-fltk

MULTI_PACKAGES =	-main -gtk2 -gnome3

PSEUDO_FLAVORS=		no_gtk2 no_gnome3 bootstrap
FLAVOR?=		no_gtk2 no_gnome3 bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-gtk2}
CONFIGURE_ARGS +=	--disable-pinentry-gtk2
.endif

.if !${BUILD_PACKAGES:M-gnome3}
CONFIGURE_ARGS +=	--disable-pinentry-gnome3
.endif

# http://pkgs.fedoraproject.org/cgit/pinentry.git/tree/pinentry-wrapper
post-install:
	rm ${PREFIX}/bin/pinentry
	${SUBST_CMD} -c -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} \
		${FILESDIR}/pinentry-wrapper.in ${PREFIX}/bin/pinentry

.include <bsd.port.mk>
