# $OpenBSD: Makefile,v 1.14 2013/10/06 19:12:09 lteo Exp $

COMMENT=	GNU oSIP library

DISTNAME=	libosip2-3.5.0
REVISION=	2

SHARED_LIBS +=	osipparser2          4.0      # 8.0
SHARED_LIBS +=	osip2                4.0      # 8.0

CATEGORIES=	telephony devel

HOMEPAGE=	http://www.gnu.org/software/osip/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}

USE_GROFF=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
