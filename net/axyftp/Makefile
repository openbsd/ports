# $OpenBSD: Makefile,v 1.17 2009/08/10 06:33:43 kili Exp $

COMMENT=	ftp client for X window system

DISTNAME=	axyftp-0.5.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.sunsite.auc.dk/disk2/linuxberg.com/files/x11/network/

HOMEPAGE=	http://www.wxftp.seul.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c pthread-stubs xcb

USE_X11=	Yes
CONFIGURE_STYLE= gnu

FLAVORS=	gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS=    gtk.1.2,gdk.1.2::x11/gtk+
CONFIGURE_ARGS=	--with-gui=gtk
WANTLIB+=		Xi m glib gmodule iconv intl
.else
USE_MOTIF=	any
WANTLIB+=		ICE SM Xpm Xt
.endif

.include <bsd.port.mk>
