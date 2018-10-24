# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:12 sthen Exp $

COMMENT=		slit pager for fluxbox window manager

DISTNAME=		fluxter-0.1.0
REVISION =		2
CATEGORIES=		x11

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

HOMEPAGE=		http://benedict.isomedia.com/homes/stevencooper/projects/fluxter.html

# GNU
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://benedict.isomedia.com/homes/stevencooper/files/

WANTLIB=		m ICE X11 c SM ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

RUN_DEPENDS=		x11/fluxbox

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
