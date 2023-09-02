COMMENT =	extract, create or manipulate MoPaQ mpq archives
DISTNAME =	libmpq-0.4.2pl20230224
CATEGORIES =	archivers

SHARED_LIBS +=	mpq                       0.0 # 0.0

GH_ACCOUNT =	diasurgical
GH_PROJECT =	libmpq
GH_COMMIT =	b78d66c6fee6a501cc9b95d8556a129c68841b05

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += bz2 z

LIB_DEPENDS +=	archivers/bzip2

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

post-extract:
	touch ${WRKSRC}/ChangeLog

.include <bsd.port.mk>
