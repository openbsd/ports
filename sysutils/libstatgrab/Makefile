# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:30 espie Exp $

COMMENT=	system statistics gathering library

DISTNAME=	libstatgrab-0.17
CATEGORIES=	sysutils

HOMEPAGE=	http://www.i-scream.org/libstatgrab/

MAINTAINER=	William Yodlowsky <william@openbsd.org>

SHARED_LIBS +=  statgrab             0.0      # 8.3

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c ncurses

MASTER_SITES=	ftp://ftp.i-scream.org/pub/i-scream/libstatgrab/ \
		ftp://ftp.uk.i-scream.org/pub/i-scream/libstatgrab/

USE_LIBTOOL=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-setgid-binaries \
		--disable-setuid-binaries \
		--disable-deprecated

.include <bsd.port.mk>
