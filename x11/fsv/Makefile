# $OpenBSD: Makefile,v 1.5 2001/04/17 02:07:35 brad Exp $

COMMENT=	"3D filesystem visualizer"

DISTNAME=	fsv-0.9
CATEGORIES=     x11
NEED_VERSION=	1.396
MASTER_SITES=	http://fox.mit.edu/skunk/soft/src/

HOMEPAGE=	http://fox.mit.edu/skunk/soft/fsv/

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
