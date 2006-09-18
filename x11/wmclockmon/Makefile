# $OpenBSD: Makefile,v 1.2 2006/09/18 10:21:49 espie Exp $

COMMENT=		"Window Maker dock.app clock"

DISTNAME=		wmclockmon-0.8.0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://tnemeth.free.fr/projets/dockapps.html

MAINTAINER=		Niall O Higgins <niallo@openbsd.org>

MASTER_SITES=		http://tnemeth.free.fr/projets/programmes/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi Xpm c gmodule iconv intl m glib

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
