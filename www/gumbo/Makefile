COMMENT =	HTML5 parsing library in pure C99

V =		0.14.1
DIST_TUPLE =	codeberg gumbo-parser gumbo-parser $V .
DISTNAME =	gumbo-parser-$V
PKGNAME =	gumbo-$V
WRKDIST =	${WRKDIR}/gumbo-parser

SHARED_LIBS +=	gumbo	3.0 # 4.0

CATEGORIES =	www

HOMEPAGE =	https://codeberg.org/gumbo-parser/gumbo-parser

# Apache 2.0
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/gtest

CONFIGURE_STYLE =	autoreconf

# Allow gtest detection
CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib

AUTOCONF_VERSION =	2.72
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

pre-test:
	@mkdir -p ${WRKSRC}/gtest/googletest
	@ln -s ${LOCALBASE}/include ${WRKSRC}/gtest/googletest/include

.include <bsd.port.mk>
