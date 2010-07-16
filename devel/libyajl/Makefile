# $OpenBSD: Makefile,v 1.2 2010/07/16 21:11:51 dcoppa Exp $

COMMENT =	small JSON library written in ANSI C

V =		1.0.9
PKGNAME =	libyajl-${V}

DISTNAME =	lloyd-yajl-${V}

CATEGORIES =	devel

SHARED_LIBS =	yajl	0.0

HOMEPAGE =	http://lloyd.github.com/yajl/

MASTER_SITES =	http://github.com/lloyd/yajl/tarball/${V}/

MAINTAINER =	Christopher Zimmermann <madroach@zakweb.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MODULES =	devel/cmake

SEPARATE_BUILD =simple

WRKDIST =	${WRKDIR}/lloyd-yajl-9c15d72

pre-regress:
	ln -s ${WRKBUILD} ${WRKSRC}/build

.include <bsd.port.mk>
