# $OpenBSD: Makefile,v 1.10 2020/10/18 18:37:19 daniel Exp $

COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.0.9

SHARED_LIBS +=  brotlicommon              1.2 # 1.0.9
SHARED_LIBS +=  brotlidec                 1.1 # 1.0.9
SHARED_LIBS +=  brotlienc                 1.0 # 1.0.9

CATEGORIES =		archivers

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c m

MODULES =		devel/cmake

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/brotli.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
