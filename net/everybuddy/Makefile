# $OpenBSD: Makefile,v 1.8 2002/12/29 21:14:11 fgsch Exp $

COMMENT=	"chat program that combines AIM, ICQ, and Yahoo! Chat"

DISTNAME=	everybuddy-0.2.1beta6
CATEGORIES=	net
MASTER_SITES=	http://www.everybuddy.com/files/

HOMEPAGE=	http://www.everybuddy.com/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Josh Rivel <dorqus@bsdfreek.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-arts --without-gnome

FLAVORS=		no_esd
FLAVOR?=

.if ${FLAVOR:L:Mno_esd}
CONFIGURE_ARGS+=	--disable-esd
.else
CONFIGURE_ARGS+=	--with-esd
LIB_DEPENDS+=		esd::audio/esound
.endif

.include <bsd.port.mk>
