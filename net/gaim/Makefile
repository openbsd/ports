# $OpenBSD: Makefile,v 1.42 2003/07/23 01:13:58 brad Exp $

DISTNAME=	gaim-0.66
CATEGORIES=	net

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Gtk AIM, ICQ, IRC, Jabber, MSN, Yahoo, and Zephyr client"
HOMEPAGE=	http://gaim.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim/}

MAINTAINER=	Brad Smith <brad@openbsd.org>

MODULES=	gettext

LIB_DEPENDS+=	glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
		atk-1.0.0.0::devel/atk \
		pango-1.0.0.0,pangox-1.0.0.0,pangoxft-1.0.0.0::devel/pango \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-gtkspell --disable-nas
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	audio
FLAVOR?=	

.if ${FLAVOR:L:Maudio}
LIB_DEPENDS+=	audiofile::devel/libaudiofile \
		ao.3::audio/libao
.else
CONFIGURE_ARGS+= --disable-audio
.endif

.include <bsd.port.mk>
