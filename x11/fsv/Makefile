# $OpenBSD: Makefile,v 1.9 2003/10/08 17:13:16 sturm Exp $

COMMENT=	"3D filesystem visualizer"

DISTNAME=	fsv-0.9
CATEGORIES=     x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fsv/}

HOMEPAGE=	http://fsv.sourceforge.net

LIB_DEPENDS=	gtkgl.1::x11/gtkglarea

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
