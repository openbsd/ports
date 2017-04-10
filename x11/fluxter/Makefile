# $OpenBSD: Makefile,v 1.6 2017/04/10 11:46:35 sthen Exp $

COMMENT=		slit pager for fluxbox window manager

DISTNAME=		fluxter-0.1.0
CATEGORIES=		x11

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

HOMEPAGE=		http://benedict.isomedia.com/homes/stevencooper/projects/fluxter.html

# GNU
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://benedict.isomedia.com/homes/stevencooper/files/

WANTLIB=		m ICE X11 c SM ${LIBCXX}

RUN_DEPENDS=		x11/fluxbox

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
