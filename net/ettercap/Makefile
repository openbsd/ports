# $OpenBSD: Makefile,v 1.16 2002/06/17 02:21:43 mark Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=		0.6.6.6
DISTNAME=	ettercap-${VER}
CATEGORIES=	net
NEED_VERSION=	1.531
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/}

HOMEPAGE=	http://ettercap.sourceforge.net/

MAINTAINER=	Mark Grimes <mark@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https --enable-plugins

.include <bsd.port.mk>
