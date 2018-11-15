# $OpenBSD: Makefile,v 1.5 2018/11/15 21:12:05 rsadowski Exp $
ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	fast and flexible static site generator

DISTNAME =	hugo-0.51

CATEGORIES =	www

HOMEPAGE =	https://gohugo.io/

MAINTAINER =	Kevin Wondratsch <bsd@kwondratsch.com>

#Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://files.fairydust.space/

MODULES =	lang/go

ALL_TARGET =	github.com/gohugoio/hugo

SEPARATE_BUILD =	Yes

post-build:
	cd ${MODGO_WORKSPACE}/bin/ && ./hugo gen man

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/hugo ${PREFIX}/bin/
	${INSTALL_MAN} ${MODGO_WORKSPACE}/bin/man/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
