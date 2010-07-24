# $OpenBSD: Makefile,v 1.22 2010/07/24 15:35:40 naddy Exp $

COMMENT=	record and analyze your meals for nutrient composition

DISTNAME=	nut-14.4
PKGNAME=	nutdb-14.4
REVISION=	0
CATEGORIES=	biology
HOMEPAGE=	http://nut.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nut/}

NO_REGRESS=	Yes

ALL_TARGET=     nut

USE_GMAKE=	Yes

.include <bsd.port.mk>
