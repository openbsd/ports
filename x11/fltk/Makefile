# $OpenBSD: Makefile,v 1.13 2001/04/15 03:14:15 matt Exp $

COMMENT=	"Fast-Light Tool Kit"

VER=		1.0.10
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

# The -glut FLAVOR builds fltk's GLUT emulation layer.
FLAVORS=	glut
FLAVOR?=

.if ${FLAVOR:L:Mglut}
CONFIGURE_ARGS+=--enable-glut
.else
CONFIGURE_ARGS+=--disable-glut
.endif

CONFIGURE_STYLE=gnu dest
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
WRKDIST=	${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>

