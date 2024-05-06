COMMENT =	console based XMPP client
DISTNAME =	profanity-0.14.0
REVISION =	1
CATEGORIES =	net

HOMEPAGE =	https://profanity-im.github.io/

MAINTAINER =	Omar Polo <op@openbsd.org>

SHARED_LIBS +=  profanity                 1.0 # 0.0

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =		https://profanity-im.github.io/tarballs/

WANTLIB += assuan c crypto curl curses ereadline expat ffi gcrypt
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme iconv intl m nghttp2 nghttp3 ngtcp2 ngtcp2_crypto_quictls
WANTLIB += otr pcre2-8 pthread ${MODPY_WANTLIB} qrencode signal-protocol-c
WANTLIB += sqlite3 ssl strophe util z

MODULES +=	lang/python

LIB_DEPENDS +=	databases/sqlite3 \
		devel/glib2 \
		devel/readline \
		graphics/libqrencode \
		net/curl \
		net/libstrophe \
		net/libsignal-protocol-c \
		security/gpgme \
		security/libotr

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/cmocka

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.71
SEPARATE_BUILD =	Yes

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS +=	--with-xscreensaver=no \
			--enable-gdk-pixbuf=no \
			--enable-icons-and-clipboard=no \
			--enable-notifications=no \
			--enable-plugins=yes \
			--enable-omemo=yes \
			--enable-otr=yes

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS}"

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure.ac

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/profanity/
	${INSTALL_DATA} ${WRKSRC}/profrc.example ${PREFIX}/share/examples/profanity/
	${INSTALL_MAN} ${WRKSRC}/docs/profanity*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
