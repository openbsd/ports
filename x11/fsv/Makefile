# $OpenBSD: Makefile,v 1.6 2001/10/30 02:04:59 kevlo Exp $

COMMENT=	"3D filesystem visualizer"

DISTNAME=	fsv-0.9
CATEGORIES=     x11
NEED_VERSION=	1.396
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	fsv

HOMEPAGE=	http://fsv.sourceforge.net

LIB_DEPENDS=	gtkgl.1::x11/gtkglarea

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
