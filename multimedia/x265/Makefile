# $OpenBSD: Makefile,v 1.2 2014/09/16 18:13:58 landry Exp $

COMMENT=	free H.265/HEVC encoder
BROKEN-powerpc =	undefined reference to `__sync_val_compare_and_swap_8'

DISTNAME=	1.3
PKGNAME=	x265-${DISTNAME}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/get/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x265	0.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread stdc++

DIST_SUBDIR=	x265
WRKDIST=	${WRKDIR}/multicoreware-x265-c1e4fc0162c1
WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake \
		lang/clang

MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c c++

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
