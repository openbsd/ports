# $OpenBSD: Makefile,v 1.16 2001/11/21 01:29:49 matt Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.0.11
PKGNAME=	fltk-${VER}
DISTNAME=	${PKGNAME}-source

CATEGORIES=	x11
NEED_VERSION=	1.498

HOMEPAGE=	http://www.fltk.org/

MAINTAINER=	Matt Behrens <matt@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.fltk.org/pub/fltk/${VER}/

USE_X11=	Yes

CONFIGURE_STYLE=autoconf dest
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
WRKDIST=	${WRKDIR}/${PKGNAME}

NO_REGRESS=	Yes

.include <bsd.port.mk>

