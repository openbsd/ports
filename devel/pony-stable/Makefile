# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:16 sthen Exp $

# Requires ponyc
ONLY_FOR_ARCHS =	aarch64 amd64 arm i386

COMMENT =	simple dependency manager for the Pony language
CATEGORIES =	devel

GH_ACCOUNT =	ponylang
GH_PROJECT =	pony-stable
GH_TAGNAME =	0.2.0

HOMEPAGE =	https://www.ponylang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c execinfo m

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	lang/ponyc

USE_GMAKE =	Yes
ALL_TARGET =	build/release/stable

post-patch:
	ln -sf ${LOCALBASE}/bin/ponyc ${WRKDIR}/bin/ponyc

# A better install routine.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/build/release/stable \
		${PREFIX}/bin

.include <bsd.port.mk>
