# $OpenBSD: Makefile,v 1.4 2018/10/02 06:41:29 rsadowski Exp $
ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	fast and flexible static site generator

DISTNAME =	hugo-0.49

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
