# $OpenBSD: Makefile,v 1.3 2001/08/27 14:18:07 todd Exp $

COMMENT=		"chat program that combines AIM, ICQ, and Yahoo! Chat"

DISTNAME=		everybuddy-0.2.1beta6
CATEGORIES=		net
NEED_VERSION=		1.364
MASTER_SITES=		http://www.everybuddy.com/files/
HOMEPAGE=		http://www.everybuddy.com/

MAINTAINER=		Josh Rivel <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		glib.1.2::devel/glib \
		esd::audio/esound

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
