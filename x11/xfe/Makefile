# $OpenBSD: Makefile,v 1.5 2007/08/10 12:50:33 ajacoutot Exp $

COMMENT=	MS-Explorer like file manager for X

DISTNAME= 	xfe-1.00
CATEGORIES= 	x11	

HOMEPAGE=	http://roland65.free.fr/xfe/

MAINTAINER= 	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xfe/}	

WANTLIB=	c m stdc++ png X11 Xft

MODULES=	devel/gettext
LIB_DEPENDS=	FOX-1.6.>=1::devel/fox

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/fox-1.6 \
			-I${X11BASE}/include \
			-I${X11BASE}/include/freetype2 \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl \
			-L${X11BASE}/lib -lXft"

.include <bsd.port.mk>
