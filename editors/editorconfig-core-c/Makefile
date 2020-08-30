# $OpenBSD: Makefile,v 1.2 2020/08/30 18:54:06 bcallah Exp $

COMMENT =	library for IDE consistency
CATEGORIES =	editors x11

SHARED_LIBS +=  editorconfig              0.0 # 0.0

GH_ACCOUNT =	editorconfig
GH_PROJECT =	editorconfig-core-c
GH_TAGNAME =	v0.12.4

HOMEPAGE =	https://editorconfig.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pcre2-8

MODULES =	devel/cmake

LIB_DEPENDS =	devel/pcre2

CONFIGURE_ARGS +=	-DBUILD_DOCUMENTATION=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
