# $OpenBSD: Makefile,v 1.18 2001/10/29 03:15:39 jcs Exp $

DISTNAME=	gaim-0.46
CATEGORIES=	net
NEED_VERSION=	1.487

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Gtk-based AOL Instant Messenger (AIM) client"
HOMEPAGE=	http://gaim.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= gaim

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
MODULES=	gtk
LIB_DEPENDS+=	gdk_pixbuf.2::graphics/gdk-pixbuf
RUN_DEPENDS=	ispell::textproc/ispell

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-gnome --disable-artsc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	esd
FLAVOR?=	

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=	esd.2::audio/esound
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.include <bsd.port.mk>
