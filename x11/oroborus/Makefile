# $OpenBSD: Makefile,v 1.4 2010/10/19 08:13:58 espie Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xpm c 

CONFIGURE_STYLE=gnu
USE_X11=	Yes
USE_GMAKE=	Yes
USE_GROFF =	Yes
SEPARATE_BUILD= simple

.include <bsd.port.mk>
