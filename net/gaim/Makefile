# $OpenBSD: Makefile,v 1.16 2001/10/06 08:11:15 jcs Exp $

DISTNAME=	gaim-0.45
CATEGORIES=	net
NEED_VERSION=	1.470

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
LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf
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
