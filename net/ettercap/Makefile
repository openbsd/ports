# $OpenBSD: Makefile,v 1.4 2001/06/12 00:25:53 obecian Exp $

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=	0.5.0
DISTNAME=	ettercap-${VER}
CATEGORIES=	net
NEED_VERSION=	1.364
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ettercap

HOMEPAGE=	http://ettercap.sourceforge.net/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
# not yet
#CONFIGURE_ARGS+=	--enable-plugins

.include <bsd.port.mk>
