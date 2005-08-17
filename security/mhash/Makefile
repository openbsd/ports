# $OpenBSD: Makefile,v 1.14 2005/08/17 16:10:04 espie Exp $

COMMENT=	"strong hash library"

DISTNAME=	mhash-0.9.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mhash/}

HOMEPAGE=	http://mhash.sourceforge.net/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
