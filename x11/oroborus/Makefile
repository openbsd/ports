# $OpenBSD: Makefile,v 1.8 2013/10/11 23:51:50 naddy Exp $

COMMENT=	minimalistic X11 window manager

CATEGORIES=	x11
DISTNAME=	oroborus-2.0.12
DISTFILES=	oroborus_2.0.12-1.tar.gz
MASTER_SITES=	http://www.mguillaud.net/ports/oroborus/ \
		http://matt.peterson.org/FreeBSD/ports/
HOMEPAGE=	http://www.oroborus.org/

MAINTAINER=	Maxime Guillaud <bsd-ports@mguillaud.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xext Xpm c 

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
SEPARATE_BUILD= Yes

.include <bsd.port.mk>
