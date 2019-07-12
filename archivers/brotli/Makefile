# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:27 sthen Exp $

COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.0.7

SHARED_LIBS +=  brotlicommon              1.1 # 0.6
SHARED_LIBS +=  brotlidec                 1.1 # 0.6
SHARED_LIBS +=  brotlienc                 1.0 # 0.6

CATEGORIES =		archivers

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MODULES =		devel/cmake

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/brotli.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
