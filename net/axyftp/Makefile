# $OpenBSD: Makefile,v 1.2 2000/07/01 13:14:25 kevlo Exp $

DISTNAME=	axyftp-0.5.1
CATEGORIES=	net
NEED_VERSION=   1.309
MASTER_SITES=	ftp://ftp.wxftp.seul.org/pub/wxftp/0.5.1/
HOMEPAGE=	http://www.wxftp.seul.org/

MAINTAINER=     kevlo@openbsd.org

PERMIT_PACKAGE_CDROM=   "no fee"
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM="no fee"
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=    gtk.1.2::x11/gtk+

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-gui=gtk

.include <bsd.port.mk>
