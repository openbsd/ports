# $OpenBSD: Makefile,v 1.2 2002/07/14 20:02:16 nino Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

DISTNAME=		gtkhtml-1.0.4
CATEGORIES=    		www
NEED_VERSION=		1.530
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=unstable/sources/gtkhtml/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

LIB_DEPENDS=		bonobo.2,bonobox.2::x11/gnome/bonobo \
			capplet::x11/gnome/controlcenter \
			gal.16::devel/gal \
			ghttp.1::www/libghttp \
			glade.5,glade-gnome.5::devel/libglade,gnome

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-bonobo
CONFIGURE_ARGS+= 	--with-gconf
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtkhtml; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gtkhtml/

.include <bsd.port.mk>
