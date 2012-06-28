# $OpenBSD: Makefile,v 1.8 2012/06/28 08:50:49 dcoppa Exp $

COMMENT =	small JSON library written in ANSI C

V =		2.0.4
PKGNAME =	libyajl-${V}
DISTNAME =	lloyd-yajl-${V}

CATEGORIES =	devel

SHARED_LIBS =	yajl	2.0	# 2.0.4

HOMEPAGE =	http://lloyd.github.com/yajl/

MASTER_SITES =	http://distfiles.nl/ \
		http://github.com/lloyd/yajl/tarball/${V}/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MODULES =	devel/cmake

.include <bsd.port.mk>
