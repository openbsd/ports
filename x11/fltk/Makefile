# $OpenBSD: Makefile,v 1.14 2001/06/07 02:28:23 matt Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.0.11
PKGNAME=	fltk-${VER}
DISTNAME=	${PKGNAME}-source

CATEGORIES=	x11
NEED_VERSION=	1.394

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fltk.org/pub/fltk/${VER}/

CONFIGURE_STYLE=autoconf dest
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>

