# $OpenBSD: Makefile,v 1.16 2004/10/10 16:46:53 sturm Exp $

COMMENT=		"GNOME panel applet that displays the CPU + memory load"

DISTNAME=		bubblemon-2.0.1
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.d.kth.se/~d92-jwa/code/

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		http://savannah.nongnu.org/download/bubblemon/

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		panel-applet-2::x11/gnome/panel \
			gtop-2.0.3.0::devel/libgtop2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
