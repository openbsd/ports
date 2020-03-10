# $OpenBSD: Makefile,v 1.12 2020/03/10 09:20:06 paco Exp $
ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	fast and flexible static site generator

DISTNAME =	hugo-0.67.0

CATEGORIES =	www

HOMEPAGE =	https://gohugo.io/

MAINTAINER =	Paco Esteban <paco@openbsd.org>

#Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://e1e0.net/dist/

MODULES =	lang/go

NO_TEST =	Yes

ALL_TARGET =	github.com/gohugoio/hugo

SEPARATE_BUILD =	Yes

post-build:
	cd ${MODGO_WORKSPACE}/bin/ && ./hugo gen man

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/hugo ${PREFIX}/bin/
	${INSTALL_MAN} ${MODGO_WORKSPACE}/bin/man/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
