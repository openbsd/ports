# $OpenBSD: Makefile,v 1.8 2002/05/15 18:05:19 espie Exp $

COMMENT=	"extensible window manager"

VERSION=	0.36
DISTNAME=	sawfish-${VERSION}
CATEGORIES=	x11
NEED_VERSION=	1.489
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sawmill/}

HOMEPAGE=       http://sawmill.sourceforge.net/

BUILD_DEPENDS=	::x11/rep-gtk
RUN_DEPENDS=	::x11/rep-gtk
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		rep.10::lang/librep \
		gdk_imlib.19::graphics/imlib

MAINTAINER=	Robbie Gates <robbie@g7.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	OPSYS_VER VERSION

USE_X11=	Yes
USE_GMAKE=      Yes
CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/etc
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-capplet --disable-themer \
		 --disable-gnome-widgets --disable-linguas
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
