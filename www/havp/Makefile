# $OpenBSD: Makefile,v 1.1.1.1 2008/06/04 10:56:15 sthen Exp $

COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.88
CATEGORIES=	www
MASTER_SITES=	http://www.server-side.de/download/

HOMEPAGE=	http://www.server-side.de/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m pthread stdc++

LIB_DEPENDS=		clamav.>=1::security/clamav

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=		--disable-locking \
			--disable-trophie
CONFIGURE_ENV=	LDFLAGS="-pthread"
USE_GMAKE=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
