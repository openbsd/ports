# $OpenBSD: Makefile,v 1.15 2003/06/04 01:17:50 margarida Exp $

COMMENT=	"X11 front-end for ghostscript"

DISTNAME=	ghostview-1.5
CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_GNU:=ghostview/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=    :ghostscript-*:print/ghostscript/gnu

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
