# $OpenBSD: Makefile,v 1.9 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"tails a given file anywhere on your X11 root window"

DISTNAME=	root-tail-0.2
CATEGORIES=	x11

HOMESITE=	http://www.goof.com/pcg/marc
HOMEPAGE=	${HOMESITE}/root-tail.html

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMESITE}/data/

CONFIGURE_STYLE=	imake
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
