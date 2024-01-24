COMMENT =		HTTP reverse proxy/load balancer/SSL offload

V =			4.11
DISTNAME =		pound-$V
PKGNAME =		${DISTNAME:L}

PORTROACH =		site:https://github.com/graygnuorg/pound/releases/

CATEGORIES =		www

HOMEPAGE =		https://maucher-online.com/pound/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=		c crypto pcre2-8 pcre2-posix pthread ssl

SITES =			https://github.com/graygnuorg/pound/releases/download/v$V/

LIB_DEPENDS =		devel/pcre2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			--with-owner=root \
			--with-group=bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pound
	${INSTALL_DATA} ${FILESDIR}/pound.cfg ${PREFIX}/share/examples/pound/

.include <bsd.port.mk>
