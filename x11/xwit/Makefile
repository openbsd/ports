# $OpenBSD: Makefile,v 1.5 2002/05/15 18:05:20 espie Exp $

COMMENT=	"X11 window interface tool"

DISTNAME=	xwit-3.4
CATEGORIES=	x11
NEED_VERSION=	1.515

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=utilities/}

USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
