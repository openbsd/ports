# $OpenBSD: Makefile,v 1.5 2001/10/24 12:29:50 espie Exp $

COMMENT=	"chat program that combines AIM, ICQ, and Yahoo! Chat"

DISTNAME=	everybuddy-0.2.1beta6
CATEGORIES=	net
NEED_VERSION=	1.474
MASTER_SITES=	http://www.everybuddy.com/files/

HOMEPAGE=	http://www.everybuddy.com/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		esd::audio/esound

MAINTAINER=	Josh Rivel <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-arts --without-gnome

.include <bsd.port.mk>
