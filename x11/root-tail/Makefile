# $OpenBSD: Makefile,v 1.12 2004/12/19 17:36:33 alek Exp $

COMMENT=	"tails a given file anywhere on your X11 root window"

DISTNAME=	root-tail-1.1
CATEGORIES=	x11

HOMESITE=	http://www.goof.com/pcg/marc
HOMEPAGE=	${HOMESITE}/root-tail.html

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c

MASTER_SITES=	${HOMESITE}/data/

CONFIGURE_STYLE=	imake
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
