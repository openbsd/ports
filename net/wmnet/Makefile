# $OpenBSD: Makefile,v 1.10 2006/11/13 12:51:15 steven Exp $

COMMENT=	"little X dock.app network monitor"

DISTNAME=	wmnet-1.06
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net x11 x11/windowmaker
HOMEPAGE=	http://www.digitalkaos.net/linux/wmnet/
MASTER_SITES=	${HOMEPAGE}download/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c kvm m 

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
