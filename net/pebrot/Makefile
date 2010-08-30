# $OpenBSD: Makefile,v 1.19 2010/08/30 21:14:35 sthen Exp $

COMMENT=	text-based MSN messenger client

MODPY_EGG_VERSION=	0.8.9
DISTNAME=	pebrot-${MODPY_EGG_VERSION}
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	http://pebrot.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pebrot/}

NO_REGRESS=	Yes

MODULES=	lang/python

.include <bsd.port.mk>
