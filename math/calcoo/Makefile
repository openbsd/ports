# $OpenBSD: Makefile,v 1.8 2002/03/10 13:08:55 naddy Exp $

COMMENT=	"Gtk-based scientific calculator"

DISTNAME=	calcoo-1.3.7
CATEGORIES=	math
NEED_VERSION=	1.497
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE} \
			http://www.physics.umn.edu/~kaminski/calcoo/
MASTER_SITE_SUBDIR=	calcoo

LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
