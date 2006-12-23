# $OpenBSD: Makefile,v 1.1.1.1 2006/12/23 14:10:13 espie Exp $

COMMENT=	full-text search engine library
CATEGORIES=	textproc
DISTNAME=	clucene-core-0.9.16a

MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=clucene/}

HOMEPAGE= 	http://clucene.sourceforge.net/
SHARED_LIBS +=	clucene               0.0     # .0.0

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

# LGPL/Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# Debug test crashes with shared libraries
#CONFIGURE_ARGS+=	--disable-shared
#LIBTOOL_FLAGS+=	--tag=disable-shared

.include <bsd.port.mk>
