# $OpenBSD: Makefile,v 1.12 2006/02/10 09:47:24 steven Exp $

COMMENT=	"win95-like window manager based on fvwm 2.x"

DISTNAME=	fvwm95-2.0.43a-Autoconf
PKGNAME=	fvwm95-2.0.43ap1
CATEGORIES=     x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fvwm95/} \
		ftp://ftp.plig.org/pub/fvwm95/ \
		ftp://ftp.plig.org/pub/fvwm95/old/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fvwm95.sourceforge.net/

LIB_DEPENDS=	rplay::audio/rplay

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		X11 Xext Xpm c

USE_X11=	Yes

CONFIGURE_STYLE= gnu dest
NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/fvwm/fvwm95.man ${PREFIX}/man/man1/fvwm95.1

.include <bsd.port.mk>
