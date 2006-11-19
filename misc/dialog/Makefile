# $OpenBSD: Makefile,v 1.14 2006/11/19 07:12:10 steven Exp $

COMMENT=	"format the display of a shell script"

DISTNAME= 	dialog-0.6z
PKGNAME=	${DISTNAME}p0
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/shell/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
