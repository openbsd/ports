# $OpenBSD: Makefile,v 1.7 2018/07/16 06:42:56 gonzalo Exp $

COMMENT =		generic lossless compressor

GH_ACCOUNT =		google
GH_PROJECT =		brotli
GH_TAGNAME =		v1.0.5

SHARED_LIBS +=  brotlicommon              1.1 # 0.6
SHARED_LIBS +=  brotlidec                 1.1 # 0.6
SHARED_LIBS +=  brotlienc                 1.0 # 0.6

CATEGORIES =		archivers

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MODULES =		devel/cmake

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/brotli.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
