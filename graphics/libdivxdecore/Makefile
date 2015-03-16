# $OpenBSD: Makefile,v 1.16 2015/03/16 18:07:47 naddy Exp $

COMMENT=	opendivx decoding API

DISTNAME=	libdivxdecore-0.4.7
REVISION =	2
SHARED_LIBS=		divxdecore	0.0
CATEGORIES=	graphics devel

MASTER_SITES=	${MASTER_SITE_OPENBSD}

# Mayo licence, h263 decoding
PERMIT_PACKAGE_CDROM=	No commercial use plus patent issue
PERMIT_PACKAGE_FTP=	Yes

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
