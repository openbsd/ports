# $OpenBSD: Makefile,v 1.4 2009/11/14 10:57:44 ajacoutot Exp $

COMMENT=	search engine library

V=		1.0.16
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
