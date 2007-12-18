# $OpenBSD: Makefile,v 1.4 2007/12/18 20:15:47 landry Exp $

COMMENT=	basic utility library for xfce4
V=		4.4.2
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

WANTLIB=	c pcre
LIB_DEPENDS=	glib-2.0.>=1400,gobject-2.0.>=1400::devel/glib2

CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
