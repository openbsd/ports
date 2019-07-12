# $OpenBSD: Makefile,v 1.10 2019/07/12 20:48:44 sthen Exp $

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.6.0
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	http://www.profanity.im/
MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://www.profanity.im/

WANTLIB += assuan c crypto curl curses ereadline expat ffi gcrypt
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme iconv intl m mesode nghttp2 otr pcre pthread
WANTLIB += ${MODPY_WANTLIB} ssl util z

MODULES +=	lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS +=${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS +=	devel/glib2 \
		devel/readline \
		net/curl \
		net/libmesode \
		security/gpgme \
		security/libotr

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/cmocka

CONFIGURE_STYLE = autoconf

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS +=	--with-xscreensaver=no \
			--enable-icons=no \
			--enable-plugins=yes \
			--enable-otr=yes

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

SEPARATE_BUILD =	Yes

# there is no stub_ui.h and is not needed
post-patch:
	find ${WRKSRC} -type f -name "*.c" \
		-exec sed -i '/stub\_ui.h/d' "{}" \;
	sed -i s,${TRUEPREFIX},${LOCALBASE}, ${WRKSRC}/configure.ac

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/profanity/
	${INSTALL_DATA} ${WRKSRC}/profrc.example ${PREFIX}/share/examples/profanity/

.include <bsd.port.mk>
