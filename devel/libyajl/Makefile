# $OpenBSD: Makefile,v 1.5 2011/05/05 12:17:44 dcoppa Exp $

COMMENT =	small JSON library written in ANSI C

V =		2.0.1
PKGNAME =	libyajl-${V}

DISTNAME =	lloyd-yajl-${V}

CATEGORIES =	devel

SHARED_LIBS =	yajl	1.0	# 2.0

HOMEPAGE =	http://lloyd.github.com/yajl/

MASTER_SITES =	http://distfiles.nl/ \
		http://github.com/lloyd/yajl/tarball/${V}/

MAINTAINER =	Christopher Zimmermann <madroach@zakweb.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c

MODULES =	devel/cmake

SEPARATE_BUILD =simple

WRKDIST =	${WRKDIR}/lloyd-yajl-f4b2b1a

pre-regress:
	ln -s ${WRKBUILD} ${WRKSRC}/build

.include <bsd.port.mk>
