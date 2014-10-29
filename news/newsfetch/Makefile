# $OpenBSD: Makefile,v 1.24 2014/10/29 00:07:17 jca Exp $

COMMENT=	download news articles from NNTP server

DISTNAME=	newsfetch-1.21
REVISION=	0
CATEGORIES=	news
MASTER_SITES=	${MASTER_SITE_SUNSITE:=system/news/readers/}

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}" \
		INSTALL_MAN="${INSTALL_MAN}"

NO_TEST=	Yes

ALL_TARGET=	newsfetch

.include <bsd.port.mk>
