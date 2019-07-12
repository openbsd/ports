# $OpenBSD: Makefile,v 1.19 2019/07/12 20:49:55 sthen Exp $

COMMENT=	GNU oSIP library

DISTNAME=	libosip2-3.5.0
REVISION=	5

SHARED_LIBS +=	osipparser2          4.0      # 8.0
SHARED_LIBS +=	osip2                4.0      # 8.0

CATEGORIES=	telephony devel

HOMEPAGE=	https://www.gnu.org/software/osip/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=osip/}


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-debug \
		--enable-test

.include <bsd.port.mk>
