# $OpenBSD: Makefile,v 1.3 2004/11/22 16:59:29 espie Exp $

COMMENT=		"data backends for the Evolution mail/PIM suite"

DISTNAME=		evolution-data-server-0.0.94.1
CATEGORIES=		databases

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/evolution-data-server/0.0/}
EXTRACT_SUFX=           .tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2.0.0 ORBitCosNaming-2.0.0 \
			audiofile esd \
			bonobo-2.0.0 bonobo-activation \
			c crypto m pthread ssl z \
			gconf-2.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			gnomevfs-2.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			popt xml2



MODULES=		devel/gettext

BUILD_DEPENDS=		:bison-*:devel/bison \
			:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS= 		gnome-2::x11/gnome/libgnome \
			soup-2.2.3.1::devel/libsoup

USE_GMAKE=		Yes
YACC=			bison
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-data-server
# Flavor?
#CONFIGURE_ARGS+= 	--with-openldap=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
