# $OpenBSD: Makefile,v 1.4 2020/04/15 14:34:50 fcambus Exp $

COMMENT =	HTML5 parsing library in pure C99

GH_ACCOUNT =	google
GH_PROJECT =	gumbo-parser
GH_TAGNAME =	v0.10.1

PKGNAME =	${DISTNAME:S/-parser//}
REVISION =	0

SHARED_LIBS +=	gumbo	0.0 # 1.0

CATEGORIES =	www

# Apache 2.0
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/gtest

CONFIGURE_STYLE =	autoreconf

# Allow gtest detection
CONFIGURE_ENV =	LDFLAGS=-L${LOCALBASE}/lib

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
AUTORECONF =		./autogen.sh

pre-test:
	@mkdir ${WRKSRC}/gtest
	@ln -s ${LOCALBASE}/include ${WRKSRC}/gtest/include

.include <bsd.port.mk>
