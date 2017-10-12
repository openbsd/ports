# $OpenBSD: Makefile,v 1.3 2017/10/12 17:53:30 ajacoutot Exp $

COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.0.1

SHARED_LIBS +=  brotlicommon              1.0 # 0.6
SHARED_LIBS +=  brotlidec                 1.0 # 0.6
SHARED_LIBS +=  brotlienc                 1.0 # 0.6

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/google/brotli

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MODULES =		devel/cmake

.include <bsd.port.mk>
