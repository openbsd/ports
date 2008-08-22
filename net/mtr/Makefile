# $OpenBSD: Makefile,v 1.35 2008/08/22 00:08:57 dhill Exp $

COMMENT=	Matt's traceroute - network diagnostic tool

VERSION=	0.74
DISTNAME=	mtr-${VERSION}
CATEGORIES=	net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		c m termcap

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/

CONFIGURE_STYLE=gnu

FLAVORS=	no_x11

FLAVOR?=
.if ${FLAVOR:L} == "no_x11"
CONFIGURE_ARGS+=	--without-gtk
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gdk-x11-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
WANTLIB+=		X11 Xext Xi glib-2.0 gmodule-2.0 iconv intl
.endif

.include <bsd.port.mk>
