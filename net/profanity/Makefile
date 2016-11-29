# $OpenBSD: Makefile,v 1.4 2016/11/29 22:26:57 tb Exp $

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.5.0
CATEGORIES =	net

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.profanity.im/

WANTLIB += assuan c crypto curl ereadline expat ffi gcrypt gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme iconv intl m ncursesw nghttp2 notify otr
WANTLIB += pcre png pthread ssl strophe z

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS +=	devel/glib2 \
		devel/libnotify \
		devel/readline>=6.1p2 \
		graphics/gdk-pixbuf2 \
		net/curl \
		net/libstrophe>=0.9.1 \
		security/gpgme \
		security/libotr

TEST_DEPENDS =	devel/cmocka

CONFIGURE_STYLE = autoconf
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS =	--with-xscreensaver=no \
			--enable-icons=no \
			--enable-notifications=yes \
			--enable-otr=yes

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

# there is no stub_ui.h and is not needed
post-patch:
	find ${WRKSRC} -type f -name "*.c" \
		-exec sed -i '/stub\_ui.h/d' "{}" \;
	sed -i s,${TRUEPREFIX},${LOCALBASE}, ${WRKSRC}/configure.ac

.include <bsd.port.mk>
