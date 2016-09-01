# $OpenBSD: Makefile,v 1.10 2016/09/01 10:53:27 jasper Exp $

# g++3 chokes on the code
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		memory-efficient hash_map and hash_set C++ classes
DISTNAME =		sparsehash-2.0.2
CATEGORIES =		devel
HOMEPAGE =		https://github.com/geoffpike/sparsehash
REVISION =		3

# 3-clause BSDL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://sparsehash.googlecode.com/files/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/sparsehash

.include <bsd.port.mk>
