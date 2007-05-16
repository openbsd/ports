# $OpenBSD: Makefile,v 1.2 2007/05/16 14:22:40 steven Exp $

COMMENT=	"basic utility library for xfce4"
V=		4.4.1
DISTNAME=	libxfce4util-${V}
SHARED_LIBS +=  xfce4util            1.10     # .4.2

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.xfce.org/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# BSD, LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c
LIB_DEPENDS=	glib-2.0.>=1200,gobject-2.0.>=1200::devel/glib2

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
