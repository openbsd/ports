# $OpenBSD: Makefile,v 1.2 2003/06/12 19:50:10 marcm Exp $

COMMENT=		"Bonobo object activation framework for GNOME"

DISTNAME=		bonobo-activation-2.2.1.1
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/bonobo-activation/2.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
LIB_DEPENDS=		ORBit-2,ORBitCosNaming-2::devel/ORBit2 \
			glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.7::devel/glib2 \
			xml2.6::textproc/libxml

CONFDIR=		${SYSCONFDIR}/gnome
SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bonobo-activation; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/bonobo-activation/

.include <bsd.port.mk>
