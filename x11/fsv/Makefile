# $OpenBSD: Makefile,v 1.1.1.1 2000/07/27 06:44:20 kevlo Exp $

DISTNAME=	fsv-0.9
CATEGORIES=     x11
NEED_VERSION=	1.319
MASTER_SITES=	http://fox.mit.edu/skunk/soft/src/

HOMEPAGE=	http://fox.mit.edu/skunk/soft/fsv/

LIB_DEPENDS=	GL.3::graphics/Mesa \
		gtk.1::x11/gtk+ \
		gtkgl.1::x11/gtkglarea

MAINTAINER=     kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
