# $OpenBSD: Makefile,v 1.1.1.1 2002/08/27 22:59:10 lebel Exp $

COMMENT=	"gtk livejournal client"

VERSION=	3.0.4
DISTNAME=	logjam-${VERSION}
CATEGORIES=	misc x11

HOMEPAGE=	http://logjam.danga.com/

MAINTAINER=	Lurene Grenier <lurene@daemonkitty.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://logjam.danga.com/download/

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ 	\
			curl.2::net/curl	\
			gthread.1.2::devel/glib 
			

PSEUDO_FLAVORS=		xmms gnome
FLAVOR?= 		

.if ${FLAVOR:L:Mxmms}
LIB_DEPENDS+=         xmms::audio/xmms
.else
CONFIGURE_ARGS+=        --with-xmms=no
.endif 

.if ${FLAVOR:L:Mgnome} 
#CONFIGURE_ARGS+= 	--with-gnome=yes	# gnome support broken
CONFIGURE_ARGS+=	--with-gnome=no
.else
CONFIGURE_ARGS+=	--with-gnome=no
.endif
			

USE_X11=        	Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CXXFLAGS="${CFLAGS} -L${LOCALBASE}/lib" 	\
			LDFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
