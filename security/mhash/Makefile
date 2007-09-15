# $OpenBSD: Makefile,v 1.16 2007/09/15 23:29:58 merdely Exp $

COMMENT=	strong hash library

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
