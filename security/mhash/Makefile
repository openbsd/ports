# $OpenBSD: Makefile,v 1.15 2005/12/25 11:15:34 sturm Exp $

COMMENT=	"strong hash library"

DISTNAME=	mhash-0.9.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security
SHARED_LIBS=	mhash	2.0
MODGNU_SHARED_LIBS=mhash ''
LIBmhash_ALIAS=	realmhash

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mhash/}

HOMEPAGE=	http://mhash.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
