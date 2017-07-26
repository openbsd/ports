# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:32 sthen Exp $

COMMENT=		slit pager for fluxbox window manager

DISTNAME=		fluxter-0.1.0
REVISION =		1
CATEGORIES=		x11

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

HOMEPAGE=		http://benedict.isomedia.com/homes/stevencooper/projects/fluxter.html

# GNU
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://benedict.isomedia.com/homes/stevencooper/files/

WANTLIB=		m ICE X11 c SM ${COMPILER_LIBCXX}

RUN_DEPENDS=		x11/fluxbox

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
