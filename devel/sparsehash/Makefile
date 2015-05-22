# $OpenBSD: Makefile,v 1.7 2015/05/22 11:31:14 ajacoutot Exp $

# g++3 chokes on the code
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		memory-efficient hash_map and hash_set C++ classes
DISTNAME =		sparsehash-2.0.2
CATEGORIES =		devel
HOMEPAGE =		https://sparsehash.googlecode.com/
REVISION =		2

# 3-clause BSDL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/sparsehash

.include <bsd.port.mk>
