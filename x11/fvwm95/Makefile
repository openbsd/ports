# $OpenBSD: Makefile,v 1.6 2001/10/16 16:35:59 espie Exp $

COMMENT=	"win95-like window manager based on fvwm 2.x"

DISTNAME=	fvwm95-2.0.43a-Autoconf
PKGNAME=	fvwm95-2.0.43a
CATEGORIES=     x11
NEED_VERSION=	1.474
MASTER_SITES=	ftp://mitac11.uia.ac.be/pub/fvwm95/	\
		ftp://ftp.plig.org/pub/fvwm95/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	ftp://mitac11.uia.ac.be/html-test/fvwm95.html

LIB_DEPENDS=	rplay::audio/rplay

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

USE_X11=	Yes

CONFIGURE_STYLE= gnu dest

post-install:
	${INSTALL_MAN} ${WRKSRC}/fvwm/fvwm95.man ${PREFIX}/man/man1/fvwm95.1

.include <bsd.port.mk>
