# $OpenBSD: Makefile,v 1.3 2000/09/23 19:47:41 danh Exp $

DISTNAME=	fvwm95-2.0.43a-Autoconf
PKGNAME=	fvwm95-2.0.43a
CATEGORIES=     x11
NEED_VERSION=	1.334
MASTER_SITES=	ftp://mitac11.uia.ac.be/pub/fvwm95/	\
		ftp://ftp.plig.org/pub/fvwm95/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	ftp://mitac11.uia.ac.be/html-test/fvwm95.html

BUILD_DEPENDS=	${LOCALBASE}/lib/librplay.a::audio/rplay

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

USE_X11=	Yes

CONFIGURE_STYLE= gnu dest

.include <bsd.port.mk>
