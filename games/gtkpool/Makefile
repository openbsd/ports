# $OpenBSD: Makefile,v 1.26 2010/01/03 08:58:07 jakemsr Exp $

COMMENT=	simple gtk+ pool simulation game

DISTNAME=	gtkpool-0.5.0
PKGNAME=	${DISTNAME}p4
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	devel/gettext

WANTLIB=	X11 Xau Xdmcp Xext Xi c glib gmodule m pthread-stubs sndio \
		stdc++ xcb

USE_LIBTOOL=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LIBS="-lsndio"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
