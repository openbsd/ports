# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:45 sthen Exp $

COMMENT=	system statistics gathering library

DISTNAME=	libstatgrab-0.91
REVISION=	5
CATEGORIES=	sysutils

HOMEPAGE=	http://www.i-scream.org/libstatgrab/

SHARED_LIBS +=  statgrab             1.0      # 10.0

# LGPLv2.1/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses m pthread

MASTER_SITES=	http://ftp.i-scream.org/pub/i-scream/libstatgrab/ \
		fhttp://ftp.uk.i-scream.org/pub/i-scream/libstatgrab/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-setgid-binaries \
		--disable-setuid-binaries \
		--disable-deprecated

.include <bsd.port.mk>
