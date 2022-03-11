COMMENT =		web server performance testing tool

DISTNAME =		httperf-0.9.1.20201206
CATEGORIES =		benchmarks www

GH_ACCOUNT =		httperf
GH_PROJECT =		httperf
GH_COMMIT =		de8cd6ad8a79779a0cb74a4aa2175afa9e24df57

# GPLv2
PERMIT_PACKAGE =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-DTLS1_3_VERSION=0x0304 -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS =	--enable-idleconn

LIB_DEPENDS =		devel/libeventextra

WANTLIB +=		c crypto event m ssl
WANTLIB +=		eventextra>=1

.include <bsd.port.mk>
