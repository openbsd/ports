# $OpenBSD: Makefile,v 1.9 2021/12/02 03:59:20 daniel Exp $

COMMENT =	arbitrary precision integer and rational arithmetic
CATEGORIES =	math

V =		1.11
GH_ACCOUNT =	ocaml
GH_PROJECT =	Zarith
GH_TAGNAME =	release-${V}
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	ocaml-zarith-${V}
REVISION =	0

HOMEPAGE =	https://github.com/ocaml/num/

MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>


# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ocaml

BUILD_DEPENDS =		sysutils/findlib

WANTLIB =		gmp
LIB_DEPENDS =		devel/gmp

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV =		MAKE="$(MAKE_PROGRAM)"

TEST_TARGET =		tests


.include <bsd.port.mk>
