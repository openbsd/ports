# $OpenBSD: Makefile,v 1.1.1.1 2019/02/21 00:35:17 jturner Exp $

COMMENT =	functional and imperative programming language
CATEGORIES =	lang

GH_ACCOUNT =	janet-lang
GH_PROJECT =	janet
GH_TAGNAME =	0.3.0

SHARED_LIBS +=	janet                     0.0 # 0.0

HOMEPAGE =	https://www.janet-lang.org/
MAINTAINER =	James Turner <james@calminferno.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

USE_GMAKE =	Yes
MAKE_FLAGS =	FLAGS="${CFLAGS}" \
		JANET_LIBRARY="build/libjanet.so.${LIBjanet_VERSION}"

.include <bsd.port.mk>
