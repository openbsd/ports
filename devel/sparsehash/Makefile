# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:31 espie Exp $

COMMENT =		memory-efficient hash_map and hash_set C++ classes
DISTNAME =		sparsehash-2.0.2
CATEGORIES =		devel
HOMEPAGE =		http://sparsehash.googlecode.com/
REVISION =		0

# 3-clause BSDL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

SEPARATE_BUILD =	Yes
VMEM_WARNING =		Yes

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/sparsehash

.include <bsd.port.mk>
