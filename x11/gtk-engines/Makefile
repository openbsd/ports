# $OpenBSD: Makefile,v 1.2 2001/09/14 14:41:30 todd Exp $

COMMENT=		"sample theme engines for GTK+ provided with GNOME"
V=			0.12
DISTNAME=		gtk-engines-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gtk-engines

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

post-patch:
	@cd ${WRKSRC}; \
	perl -pi -e 's|/lib/gtk/themes/engines/|/share/gtk/themes/engines|' gtk-engines.spec; \
	perl -pi -e 's|\$$\(libdir\)/gtk/themes/engines|\$$\(datadir\)/gtk/themes/engines|' \
	     {metal,notif,pixmap,raleigh,redmond95}/Makefile.in;

post-install:
	@cd ${PREFIX}/share/gtk/themes/engines; \
	for l in *.so*; do ln -s $$l $${l%.?.?}; done

.include <bsd.port.mk>
