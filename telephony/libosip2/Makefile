# $OpenBSD: Makefile,v 1.10 2012/01/18 13:45:25 sthen Exp $

COMMENT=	GNU oSIP library

DISTNAME=	libosip2-3.5.0
REVISION=	0

SHARED_LIBS +=	osipparser2          4.0      # 8.0
SHARED_LIBS +=	osip2                4.0      # 8.0

CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

MAINTAINER=	Lawrence Teo <lteo@devio.us>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}

USE_LIBTOOL=	Yes
USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
