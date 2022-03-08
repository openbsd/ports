COMMENT =	bash automated testing system

GH_ACCOUNT =	bats-core
GH_PROJECT =	bats-core
GH_TAGNAME =	v1.6.0
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

# Test #102 fails as we do not have lsof or procstat
do-test:
	cd ${WRKSRC} && ./bin/bats --print-output-on-failure --formatter tap test

.include <bsd.port.mk>
