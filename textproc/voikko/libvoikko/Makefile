COMMENT =	natural language processing tool for finnish language

V =		4.3.3
PKGNAME =	libvoikko-${V}
GH_TAGNAME =	rel-${PKGNAME}
WRKSRC =	${WRKDIST}/libvoikko

SHARED_LIBS =	voikko	0.0

COMPILER =	base-clang ports-gcc
WANTLIB +=	${COMPILER_LIBCXX} c m

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-hfst \
			--with-dictionary-path="${LOCALBASE}/share/voikko"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

NO_TEST =		Yes

.include <bsd.port.mk>
