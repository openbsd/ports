COMMENT =	DNS and DNSSEC zone file validator

V =		0.9.0
PKGNAME =	validns-${V}

CATEGORIES =	net

DIST_TUPLE =	codeberg DNS-OARC validns v${V} .

MAINTAINER =	Caspar Schutijser <caspar@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	Judy c crypto pthread ssl

LIB_DEPENDS =	devel/libJudy

TEST_DEPENDS =	devel/p5-Test-Command-Simple

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.18
AUTORECONF =		./autogen.sh

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

WRKSRC = 	${WRKDIR}/validns

.include <bsd.port.mk>
