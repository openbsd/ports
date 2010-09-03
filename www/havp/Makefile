# $OpenBSD: Makefile,v 1.9 2010/09/03 13:00:05 giovanni Exp $

COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.92
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/download/

HOMEPAGE=	http://www.server-side.de/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m pthread stdc++ clamav

LIB_DEPENDS=		::security/clamav

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=		--disable-locking \
			--disable-trophie
CONFIGURE_ENV=	LDFLAGS="-pthread"
USE_GMAKE=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/havp
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${WRKSRC}/COPYING ${PREFIX}/share/doc/havp

.include <bsd.port.mk>
