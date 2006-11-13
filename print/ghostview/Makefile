# $OpenBSD: Makefile,v 1.17 2006/11/13 12:51:15 steven Exp $

COMMENT=	"X11 front-end for ghostscript"

DISTNAME=	ghostview-1.5
CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_GNU:=ghostview/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xpm Xmu Xaw m X11 c Xt SM Xp Xext ICE

RUN_DEPENDS=    :ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
