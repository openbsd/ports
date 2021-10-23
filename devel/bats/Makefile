# $OpenBSD: Makefile,v 1.4 2021/10/23 06:07:26 bket Exp $

COMMENT =	bash automated testing system

GH_ACCOUNT =	bats-core
GH_PROJECT =	bats-core
GH_TAGNAME =	v1.5.0
PKGNAME =	${DISTNAME:S/-core//}

CATEGORIES =	devel

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS =	shells/bash
BUILD_DEPENDS =	${RUN_DEPENDS}

NO_BUILD =	Yes
PKG_ARCH =	*

post-extract:
	cd ${WRKSRC} && sed -i 's,share\/,,g' install.sh test/install.bats

do-install:
	cd ${WRKSRC} && ./install.sh ${PREFIX}

do-test:
	cd ${WRKSRC} && ./bin/bats --tap test

.include <bsd.port.mk>
