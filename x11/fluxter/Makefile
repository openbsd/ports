# $OpenBSD: Makefile,v 1.2 2007/09/15 20:04:19 merdely Exp $

COMMENT=		slit pager for fluxbox window manager

DISTNAME=		fluxter-0.1.0
CATEGORIES=		x11

MAINTAINER=		D. Adam Karim <adam@akarsoft.com>

HOMEPAGE=		http://benedict.isomedia.com/homes/stevencooper/projects/fluxter.html

# GNU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://benedict.isomedia.com/homes/stevencooper/files/

WANTLIB=		m ICE X11 c SM stdc++

RUN_DEPENDS=		:fluxbox-*:x11/fluxbox

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
