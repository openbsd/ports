# $OpenBSD: Makefile,v 1.14 2002/07/29 10:57:51 naddy Exp $

COMMENT=	"Gtk-based scientific calculator"

DISTNAME=	calcoo-1.3.12
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=calcoo/} \
			http://www.physics.umn.edu/~kaminski/calcoo/

LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
