# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:18 sthen Exp $

COMMENT=	minimalistic X11 window manager

CATEGORIES=	x11
DISTNAME=	oroborus-2.0.12
DISTFILES=	oroborus_2.0.12-1.tar.gz
REVISION=	0
MASTER_SITES=	http://www.mguillaud.net/ports/oroborus/ \
		http://matt.peterson.org/FreeBSD/ports/
HOMEPAGE=	http://www.oroborus.org/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE SM X11 Xext Xpm c 

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
SEPARATE_BUILD= Yes

.include <bsd.port.mk>
