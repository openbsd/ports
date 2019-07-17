# $OpenBSD: Makefile,v 1.26 2019/07/17 14:39:42 danj Exp $

COMMENT=	strong hash library

DISTNAME=	mhash-0.9.9.9
CATEGORIES=	security
SHARED_LIBS=	mhash	2.1	# .2.1
MODGNU_SHARED_LIBS=mhash ''
LIBmhash_ALIAS=	realmhash
REVISION=	1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mhash/}

HOMEPAGE=	http://mhash.sourceforge.net/

# LGPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
