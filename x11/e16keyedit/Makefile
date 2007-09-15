# $OpenBSD: Makefile,v 1.9 2007/09/15 22:11:38 merdely Exp $

COMMENT=		edit enlightenment's keybindings

DISTNAME=		e16keyedit-0.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=     	x11

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		${MASTER_SITES_SOURCEFORCE:=enlightenment/}

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+
RUN_DEPENDS=		:enlightenment-0.16*:x11/enlightenment

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
