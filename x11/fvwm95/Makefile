# $OpenBSD: Makefile,v 1.23 2015/06/23 08:09:04 bentley Exp $

COMMENT=	win95-like window manager based on fvwm 2.x

DISTNAME=	fvwm95-2.0.43a-Autoconf
PKGNAME=	fvwm95-2.0.43a
REVISION=	3
CATEGORIES=     x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fvwm95/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fvwm95.sourceforge.net/

LIB_DEPENDS=	audio/rplay

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=		X11 Xext Xpm c rplay

CONFIGURE_STYLE= gnu dest
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/fvwm/fvwm95.man ${PREFIX}/man/man1/fvwm95.1

.include <bsd.port.mk>
