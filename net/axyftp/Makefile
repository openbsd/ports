# $OpenBSD: Makefile,v 1.14 2003/03/31 05:27:48 kevlo Exp $

COMMENT=	"ftp client for X window system"

DISTNAME=	axyftp-0.5.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.sunsite.auc.dk/disk2/linuxberg.com/files/x11/network/

HOMEPAGE=	http://www.wxftp.seul.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu

FLAVORS=	gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS=    gtk.1.2::x11/gtk+
CONFIGURE_ARGS=	--with-gui=gtk
.else
USE_MOTIF=	any
.endif

.include <bsd.port.mk>
