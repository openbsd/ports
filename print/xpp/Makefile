# $OpenBSD: Makefile,v 1.3 2007/09/02 17:42:36 jasper Exp $

COMMENT=		X Printing Panel

DISTNAME=		xpp-1.5
CATEGORIES=		print sysutils

HOMEPAGE=		http://cups.sourceforge.net/xpp/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE stdc++ Xext GL X11 SM c m z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cups/}

LIB_DEPENDS=		cups::print/cups \
			jpeg.>=62::graphics/jpeg \
			fltk.>=4,fltk_images.>=4::x11/fltk \
			png.>=4::graphics/png

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_X11=		Yes

.include <bsd.port.mk>
