# $OpenBSD: Makefile,v 1.12 2004/12/17 15:03:18 alek Exp $

COMMENT=	"tool startup utility for X11"

DISTNAME=	xtoolwait-1.3
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.x.org/contrib/utilities/ \
		http://www.hacom.nl/~richard/software/

HOMEPAGE=	http://www.hacom.nl/~richard/software/xtoolwait.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c 

USE_X11=		Yes
CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
