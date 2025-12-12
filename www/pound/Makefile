COMMENT =		HTTP reverse proxy/load balancer/SSL offload

V =			4.19
DISTNAME =		pound-$V

CATEGORIES =		www

HOMEPAGE =		https://maucher-online.com/pound/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto m pcre2-8 pthread ssl

SITES =			https://github.com/graygnuorg/pound/releases/download/v$V/

LIB_DEPENDS =		devel/pcre2
BUILD_DEPENDS =		print/texinfo

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			MAKEINFO=gmakeinfo \
			--disable-dynamic-backends \
			--without-lua

# we don't have NOTE_CLOSE_WRITE or NOTE_CLOSE
CONFIGURE_ARGS +=	--without-fsevmon

# many tests are skipped because we don't have IO::FDPass
# if that's added, pound doesn't startup correctly during the tests, not sure why
TEST_DEPENDS =		security/p5-IO-Socket-SSL \
			security/p5-Net-SSLeay

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pound
	${INSTALL_DATA} ${FILESDIR}/pound.cfg ${PREFIX}/share/examples/pound/

.include <bsd.port.mk>
