# $OpenBSD: Makefile,v 1.11 2006/08/04 00:10:42 espie Exp $

COMMENT=	"3D filesystem visualizer"

DISTNAME=	fsv-0.9
CATEGORIES=     x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fsv/}

HOMEPAGE=	http://fsv.sourceforge.net

LIB_DEPENDS=	gtkgl.>=1::x11/gtkglarea

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		GL GLU X11 Xext Xi c gdk glib gmodule gtk iconv intl m

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
