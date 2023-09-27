COMMENT=	GNU implementation of SIP (RFC3261)

DISTNAME=	libosip2-5.3.1

SHARED_LIBS +=	osipparser2          5.0      # 15.1
SHARED_LIBS +=	osip2                5.0      # 15.1

CATEGORIES=	telephony devel

HOMEPAGE=	https://www.gnu.org/software/osip/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread

SITES=		${SITE_GNU:=osip/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-test

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>
