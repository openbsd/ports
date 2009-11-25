# $OpenBSD: Makefile,v 1.5 2009/11/25 18:31:09 ajacoutot Exp $

COMMENT=	search engine library

V=		1.0.17
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian               0.2      # .21.7

CATEGORIES=	databases textproc

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
