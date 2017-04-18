# $OpenBSD: Makefile,v 1.2 2017/04/18 16:37:46 pascal Exp $

COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v0.6.0

SHARED_LIBS +=  brotlicommon              0.0 # 0.6
SHARED_LIBS +=  brotlidec                 0.0 # 0.6
SHARED_LIBS +=  brotlienc                 0.0 # 0.6

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/google/brotli

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MODULES =		devel/cmake

.include <bsd.port.mk>
