# $OpenBSD: Makefile,v 1.5 2014/11/02 11:36:48 brad Exp $

COMMENT=	free H.265/HEVC encoder
BROKEN-hppa =		undefined reference to `__sync_val_compare_and_swap_8'
BROKEN-mips64 =		undefined reference to `__sync_val_compare_and_swap_8'
BROKEN-mips64el =	undefined reference to `__sync_val_compare_and_swap_8'
BROKEN-powerpc =	undefined reference to `__sync_val_compare_and_swap_8'

VER=		1.4
DISTNAME=	x265-${VER}
DISTFILES=	${DISTNAME}{${VER}}${EXTRACT_SUFX}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/get/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	x265	1.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread stdc++

WRKDIST=	${WRKDIR}/multicoreware-x265-5e604833c5aa
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
