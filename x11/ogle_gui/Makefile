# $OpenBSD: Makefile,v 1.3 2002/08/18 12:37:14 espie Exp $

CATEGORIES=	x11

COMMENT=	"GUI for ogle"
DISTNAME=	ogle_gui-0.8.5
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Dan Weeks <danimal@danimal.org>

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

LIB_DEPENDS=	dvdcontrol.5::x11/ogle \
		xml2::textproc/libxml \
		glade.5.0::devel/libglade \
		gtk.1.2::x11/gtk+

MODULES=	gettext

CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>
