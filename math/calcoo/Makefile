# $OpenBSD: Makefile,v 1.18 2004/12/27 07:16:44 alek Exp $

COMMENT=	"Gtk-based scientific calculator"

DISTNAME=	calcoo-1.3.15
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=calcoo/} \
			http://www.physics.umn.edu/~kaminski/calcoo/

LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
