# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:01 sthen Exp $

# g++3 chokes on the code
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		memory-efficient hash_map and hash_set C++ classes
V=			2.0.3
GH_ACCOUNT =		sparsehash
GH_PROJECT =		sparsehash
DISTNAME =		sparsehash-$V
CATEGORIES =		devel
HOMEPAGE =		https://github.com/geoffpike/sparsehash
WRKDIST =		${WRKDIR}/sparsehash-sparsehash-$V

# 3-clause BSDL
PERMIT_PACKAGE =	Yes

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/sparsehash

.include <bsd.port.mk>
