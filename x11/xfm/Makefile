# $OpenBSD: Makefile,v 1.11 2001/07/09 17:11:43 pvalchev Exp $

COMMENT=	"X11 File Manager"

DISTNAME=		xfm-1.4.2
CATEGORIES=		x11
NEED_VERSION=	1.402
MASTER_SITES=		ftp://ftp.uni-koeln.de/windows/xcontrib/

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

LIB_DEPENDS=		Xaw3d.6::x11/Xaw3d

CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
