# $OpenBSD: Makefile,v 1.1.1.1 2013/02/05 10:36:34 zhuk Exp $

COMMENT =		memory-efficient hash_map and hash_set C++ classes
DISTNAME =		sparsehash-2.0.2
CATEGORIES =		devel
HOMEPAGE =		http://sparsehash.googlecode.com/

# 3-clause BSDL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/files/

SEPARATE_BUILD =	Yes
VMEM_WARNING =		Yes

CONFIGURE_STYLE =	gnu

SUBST_VARS =		DISTNAME

.include <bsd.port.mk>
