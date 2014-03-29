# $OpenBSD: Makefile,v 1.1.1.1 2014/03/29 23:59:25 jturner Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		statically typed, imperative programming language

VERSION =		0.9.2
DISTNAME =		nimrod_${VERSION}
PKGNAME =		nimrod-${VERSION}

CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://nimrod-lang.org/
MASTER_SITES =		http://nimrod-lang.org/download/
EXTRACT_SUFX =		.zip

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

WRKDIST =		${WRKDIR}/nimrod
NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CFLAGS}" sh build.sh
	# slow machines can get a head of themselves and fail to link
	cd ${WRKSRC} && ${SETENV} bin/nimrod c --parallel_build=1 koch
	cd ${WRKSRC} && ${SETENV} ./koch boot -d:release --parallel_build=1

do-install:
	cd ${WRKSRC} && ${SETENV} sh install.sh ${PREFIX}

.include <bsd.port.mk>
