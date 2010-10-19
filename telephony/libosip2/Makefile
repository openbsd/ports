# $OpenBSD: Makefile,v 1.8 2010/10/19 07:43:05 espie Exp $

COMMENT=	GNU oSIP library

DISTNAME=	libosip2-2.2.2
REVISION=	0
SHARED_LIBS=	osip2		3.1 \
		osipparser2	3.1

CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
