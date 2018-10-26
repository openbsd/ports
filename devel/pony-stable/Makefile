# $OpenBSD: Makefile,v 1.1.1.1 2018/10/26 14:59:55 bcallah Exp $

# Requires ponyc
ONLY_FOR_ARCHS =	${LLVM_ARCHS}

COMMENT =	simple dependency manager for the Pony language
DISTNAME =	${GH_PROJECT}-0.1.6.1
CATEGORIES =	devel

# Move to GH_TAGNAME next release.
GH_ACCOUNT =	ponylang
GH_PROJECT =	pony-stable
#GH_TAGNAME =	0.1.7
GH_COMMIT =	263b285eb76202eb18cce9d449bb1560111f254d

HOMEPAGE =	https://www.ponylang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += ${COMPILER_LIBCXX} c m

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
