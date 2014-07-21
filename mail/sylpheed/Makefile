# $OpenBSD: Makefile,v 1.104 2014/07/21 08:10:09 rpointel Exp $

COMMENT =		lightweight and user-friendly e-mail client

DISTNAME =		sylpheed-3.4.2

SHARED_LIBS += 	 	sylph-0                   3.0 # 3.0
SHARED_LIBS += 		sylpheed-plugin-0         3.0 # 3.0

CATEGORIES =		mail news x11
HOMEPAGE =		http://sylpheed.sraoss.jp/en

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/gettext
LIB_DEPENDS +=		x11/gtk+2 \
			textproc/gtkspell \
			security/gpgme

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c crypto atk-1.0 cairo gdk_pixbuf-2.0
WANTLIB += pango-1.0 pangocairo-1.0 dbus-1 dbus-glib-1 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 expat fontconfig freetype m pixman-1
WANTLIB += pthread pthread-stubs gthread-2.0 pcre enchant pangoft2-1.0
WANTLIB += png gpgme gpg-error gtkspell ssl stdc++ xcb xcb-render xcb-shm z
WANTLIB += gtk-x11-2.0 gdk-x11-2.0 gtkspell assuan ffi graphite2 harfbuzz

RUN_DEPENDS =		devel/desktop-file-utils
MASTER_SITES =		http://sylpheed.sraoss.jp/sylpheed/v3.4/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--enable-ssl \
			--enable-ipv6 \
			--enable-gtkspell \
			--disable-jpilot \
			--disable-ldap \
			--disable-oniguruma \
			--enable-gpgme \
			--disable-updatecheck
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS = 		compface
FLAVOR ?=

.if ${FLAVOR:Mcompface}
LIB_DEPENDS +=		mail/faces
WANTLIB +=		compface
CONFIGURE_ARGS +=	--enable-compface
PERMIT_PACKAGE_CDROM =	No fee
PERMIT_PACKAGE_FTP =	Yes
.else
CONFIGURE_ARGS +=	--disable-compface
.endif

.include <bsd.port.mk>
