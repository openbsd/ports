# $OpenBSD: Makefile,v 1.10 2001/06/05 05:01:27 kevlo Exp $

COMMENT=	"ftp client for X window system"

DISTNAME=	axyftp-0.5.1
CATEGORIES=	net
NEED_VERSION=	1.414
MASTER_SITES=	ftp://ftp.wxftp.seul.org/pub/wxftp/0.5.1/

HOMEPAGE=	http://www.wxftp.seul.org/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "no fee"
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM="no fee"
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes
CONFIGURE_STYLE= gnu

USE_MOTIF=	any

FLAVORS=	gtk
FLAVOR?=

.if ${FLAVOR:L:Mgtk}
LIB_DEPENDS=    gtk.1.2::x11/gtk+
CONFIGURE_ARGS=	--with-gui=gtk
.endif

.include <bsd.port.mk>
