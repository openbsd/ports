# $OpenBSD: Makefile,v 1.30 2006/02/02 18:49:17 jakob Exp $

COMMENT=	"Matt's traceroute - network diagnostic tool"

VERSION=	0.69
DISTNAME=	mtr-${VERSION}
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c m termcap

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

CONFIGURE_STYLE=	gnu

FLAVORS=        no_x11

FLAVOR?=
.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-gtk
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+
WANTLIB+=		X11 Xext Xi glib gmodule iconv intl
.endif

.include <bsd.port.mk>
