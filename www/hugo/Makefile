# $OpenBSD: Makefile,v 1.1.1.1 2018/06/11 21:17:14 solene Exp $
ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	fast and flexible static site generator

VERSION =	0.41
GH_ACCOUNT =	gohugoio
GH_PROJECT =	hugo
GH_TAGNAME =	v${VERSION}

CATEGORIES =	www

HOMEPAGE =	https://gohugo.io/

MAINTAINER =	Kevin Wondratsch <bsd@kwondratsch.com>

#Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://files.fairydust.space/

MODULES =	lang/go

SEPARATE_BUILD =	Yes

post-build:
	cd ${MODGO_WORKSPACE}/bin/ && ./hugo gen man

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/hugo ${PREFIX}/bin/
	${INSTALL_MAN} ${MODGO_WORKSPACE}/bin/man/*.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
