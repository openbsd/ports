# $OpenBSD: Makefile,v 1.34 2021/05/16 07:00:20 paco Exp $
ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	fast and flexible static site generator

MODGO_MODNAME =	github.com/gohugoio/hugo
MODGO_VERSION =	v0.83.1

DISTNAME =	hugo-${MODGO_VERSION}

CATEGORIES =	www

HOMEPAGE =	https://gohugo.io/

MAINTAINER =	Paco Esteban <paco@openbsd.org>
#Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

NO_TEST =	Yes

ALL_TARGET =	github.com/gohugoio/hugo

SEPARATE_BUILD =	Yes

FLAVORS =	extended
FLAVOR ?=

.if ${FLAVOR:Mextended}
MODGO_FLAGS +=	--tags extended
LIB_DEPENDS +=	www/libsass
WANTLIB +=	sass
MAKE_ENV +=	CGO_CPPFLAGS='-I${LOCALBASE}/include -DUSE_LIBSASS_SRC' CGO_LDFLAGS='-L${LOCALBASE}/lib -lsass'
.endif

post-build:
	cd ${MODGO_WORKSPACE}/bin/ && ./hugo gen man

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/hugo ${PREFIX}/bin/
	${INSTALL_MAN} ${MODGO_WORKSPACE}/bin/man/*.1 ${PREFIX}/man/man1/

.include "./modules.inc"

.include <bsd.port.mk>
