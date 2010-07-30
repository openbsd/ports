# $OpenBSD: Makefile,v 1.18 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=	tails a given file anywhere on your X11 root window

DISTNAME=	root-tail-1.2
REVISION=	1
CATEGORIES=	x11

HOMESITE=	http://www.goof.com/pcg/marc
HOMEPAGE=	${HOMESITE}/root-tail.html

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += X11 Xau Xdmcp Xext c

MASTER_SITES=		${HOMESITE}/data/

CONFIGURE_STYLE=	imake
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
