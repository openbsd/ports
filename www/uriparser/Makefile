# $OpenBSD: Makefile,v 1.16 2021/03/19 14:29:13 sthen Exp $

COMMENT =		URI parsing library

GH_ACCOUNT =		uriparser
GH_PROJECT =		uriparser
GH_TAGNAME =		uriparser-0.9.5
PKGNAME =		${GH_TAGNAME}

SHARED_LIBS +=  uriparser                 3.1 # 1.0

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =		devel/cmake
SUBST_VARS +=		GH_TAGNAME

CONFIGURE_ARGS =	-DURIPARSER_BUILD_DOCS=off

# requires googletest
CONFIGURE_ARGS +=	-DURIPARSER_BUILD_TESTS=off
NO_TEST =		Yes

.include <bsd.port.mk>
