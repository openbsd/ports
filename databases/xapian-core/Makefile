# $OpenBSD: Makefile,v 1.1.1.1 2009/07/22 08:17:22 ajacoutot Exp $

COMMENT=	search engine library

V=		1.0.13
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian               0.0      # .21.4

CATEGORIES=	databases

HOMEPAGE=	http://xapian.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m stdc++ z

MASTER_SITES=	http://oligarchy.co.uk/xapian/${V}/

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
