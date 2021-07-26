# $OpenBSD: Makefile,v 1.1.1.1 2021/07/26 04:07:03 rsadowski Exp $

COMMENT =	decompression library for rar, tar, zip and 7z archives

V =		1.0.1
DISTNAME =	unarr-${V}

SHARED_LIBS =	unarr	0.0 # 1.0.0

CATEGORIES =	archivers

HOMEPAGE =	https://github.com/selmf/unarr/

MAINTAINER =		Omar Polo <op@omarpolo.com>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += bz2 lzma z

MASTER_SITES =		${HOMEPAGE:=releases/download/v${V}/}

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

.include <bsd.port.mk>
