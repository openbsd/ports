# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:11 sthen Exp $

COMMENT=		slit pager for fluxbox window manager

DISTNAME=		fluxter-0.1.0
REVISION =		3
CATEGORIES=		x11

HOMEPAGE=		http://benedict.isomedia.com/homes/stevencooper/projects/fluxter.html

# GNU
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://benedict.isomedia.com/homes/stevencooper/files/

WANTLIB=		m ICE X11 c SM ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=		x11/fluxbox

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
