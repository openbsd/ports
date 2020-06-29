# $OpenBSD: Makefile,v 1.15 2020/06/29 04:54:59 rsadowski Exp $

COMMENT =	console based XMPP client
DISTNAME =	profanity-0.9.4
CATEGORIES =	net

HOMEPAGE =	https://profanity-im.github.io/

MAINTAINER =	Lucas <lucas@sexy.is>

SHARED_LIBS +=  profanity                 0.0 # 0.0

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://profanity-im.github.io/

WANTLIB += assuan c crypto curl curses ereadline expat ffi gcrypt
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gpgme iconv intl m mesode nghttp2 otr pcre pthread
WANTLIB += ${MODPY_WANTLIB} signal-protocol-c sqlite3 ssl util z

MODULES +=	lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS +=	databases/sqlite3 \
		devel/glib2 \
		devel/readline \
		net/curl \
		net/libmesode \
		net/libsignal-protocol-c \
		security/gpgme \
		security/libotr

# Only needed for tests, but cannot be a TEST_DEPENDS.
# Check must be present at build time for tests to work.
BUILD_DEPENDS +=	devel/cmocka

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69
SEPARATE_BUILD =	Yes

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

CONFIGURE_ARGS +=	--with-xscreensaver=no \
			--enable-icons-and-clipboard=no \
			--enable-notifications=no \
			--enable-plugins=yes \
			--enable-omemo=yes \
			--enable-otr=yes

MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS}"

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure.ac

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/profanity/
	${INSTALL_DATA} ${WRKSRC}/profrc.example ${PREFIX}/share/examples/profanity/

.include <bsd.port.mk>
