# $OpenBSD: Makefile,v 1.2 2019/03/13 01:14:46 jturner Exp $

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	v0.4.0

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

USE_GMAKE =	Yes
MAKE_FLAGS =	FLAGS="${CFLAGS}"

.include <bsd.port.mk>
