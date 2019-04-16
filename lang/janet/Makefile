# $OpenBSD: Makefile,v 1.3 2019/04/16 00:29:26 jturner Exp $

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v0.4.1

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

USE_GMAKE =	Yes
MAKE_FLAGS =	FLAGS="${CFLAGS}"

.include <bsd.port.mk>
