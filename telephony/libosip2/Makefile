# $OpenBSD: Makefile,v 1.9 2012/01/17 17:29:36 sthen Exp $

COMMENT=	GNU oSIP library

DISTNAME=	libosip2-3.5.0
SHARED_LIBS=	osip2		4.0 \
		osipparser2	4.0

CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

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
