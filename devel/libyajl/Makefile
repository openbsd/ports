# $OpenBSD: Makefile,v 1.7 2012/03/29 13:38:30 sthen Exp $

COMMENT =	small JSON library written in ANSI C

V =		2.0.1
PKGNAME =	libyajl-${V}
REVISION =	0
DISTNAME =	lloyd-yajl-${V}

CATEGORIES =	devel

SHARED_LIBS =	yajl	1.0	# 2.0

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

SEPARATE_BUILD =Yes

WRKDIST =	${WRKDIR}/lloyd-yajl-f4b2b1a

pre-regress:
	ln -s ${WRKBUILD} ${WRKSRC}/build

.include <bsd.port.mk>
