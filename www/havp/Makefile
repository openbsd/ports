# $OpenBSD: Makefile,v 1.16 2013/10/22 09:03:30 sthen Exp $

COMMENT=	web proxy with antivirus filter

DISTNAME=	havp-0.92a
CATEGORIES=	www
MASTER_SITES=	${HOMEPAGE}/download/

REVISION=	2

HOMEPAGE=	http://www.server-side.de/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m pthread stdc++ clamav

LIB_DEPENDS=		security/clamav

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=		--disable-locking \
			--disable-trophie
CONFIGURE_ENV=	LDFLAGS="-pthread"
USE_GMAKE=	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/havp
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${WRKSRC}/COPYING ${PREFIX}/share/doc/havp

.include <bsd.port.mk>
