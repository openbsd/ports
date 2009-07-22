# $OpenBSD: Makefile,v 1.2 2009/07/22 12:41:45 ajacoutot Exp $

COMMENT=	search engine library

V=		1.0.14
DISTNAME=	xapian-core-${V}

SHARED_LIBS +=  xapian               0.1      # .21.5

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

REGRESS_TARGET=	check

.include <bsd.port.mk>
