# $OpenBSD: Makefile,v 1.9 2001/06/04 03:05:18 kevlo Exp $

COMMENT=	"ftp client for X window system"

DISTNAME=	axyftp-0.5.1
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.wxftp.seul.org/pub/wxftp/0.5.1/

HOMEPAGE=	http://www.wxftp.seul.org/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   "no fee"
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM="no fee"
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-gui=gtk

.include <bsd.port.mk>
