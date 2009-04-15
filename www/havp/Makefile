# $OpenBSD: Makefile,v 1.3 2009/04/15 17:50:21 giovanni Exp $

COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.90
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.server-side.de/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
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
