# $OpenBSD: Makefile,v 1.9 2001/11/14 18:19:40 obecian Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=		0.6.2
DISTNAME=	ettercap-${VER}
CATEGORIES=	net
NEED_VERSION=	1.460
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ettercap

HOMEPAGE=	http://ettercap.sourceforge.net/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https --enable-plugins

.include <bsd.port.mk>
