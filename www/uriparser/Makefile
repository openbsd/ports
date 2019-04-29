# $OpenBSD: Makefile,v 1.12 2019/04/29 13:38:05 ajacoutot Exp $

COMMENT =		URI parsing library

DISTNAME =		uriparser-0.9.3
WRKDIST =		${WRKDIR}/uriparser-${DISTNAME}

SHARED_LIBS +=  uriparser                 3.0 # 1.0

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://github.com/uriparser/uriparser/archive/

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DURIPARSER_BUILD_DOCS=off

# requires googletest
CONFIGURE_ARGS +=	-DURIPARSER_BUILD_TESTS=off
NO_TEST =		Yes

.include <bsd.port.mk>
