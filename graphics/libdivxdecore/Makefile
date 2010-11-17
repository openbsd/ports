# $OpenBSD: Makefile,v 1.12 2010/11/17 08:05:14 espie Exp $

COMMENT=	opendivx decoding API

DISTNAME=	libdivxdecore-0.4.7
REVISION =	1
SHARED_LIBS=		divxdecore	0.0
CATEGORIES=	graphics devel

MASTER_SITES=	${MASTER_SITE_OPENBSD}

# Mayo licence, h263 decoding
PERMIT_PACKAGE_CDROM=	No commercial use plus patent issue
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No commercial use plus patent issue
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
