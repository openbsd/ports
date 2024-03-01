COMMENT =	HTML5 parsing library in pure C99

V =		0.12.1
DIST_TUPLE =	codeberg grisha gumbo-parser $V .
DISTNAME =	gumbo-parser-$V
PKGNAME =	gumbo-$V
WRKDIST =	${WRKDIR}/gumbo-parser

SHARED_LIBS +=	gumbo	1.0 # 1.0

CATEGORIES =	www

HOMEPAGE =	https://codeberg.org/grisha/gumbo-parser

# Apache 2.0
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/gtest

CONFIGURE_STYLE =	autoreconf

# Allow gtest detection
CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

pre-test:
	@mkdir ${WRKSRC}/gtest
	@ln -s ${LOCALBASE}/include ${WRKSRC}/gtest/include

.include <bsd.port.mk>
