# $OpenBSD: Makefile,v 1.1.1.1 2003/01/31 19:02:26 todd Exp $

COMMENT=		"Boring window manager for the adult in you."

DISTNAME=		metacity-2.4.5
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/Metacity

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/metacity/2.4/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
RUN_DEPENDS=		:control-center2-*:x11/gnome/controlcenter2
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			glade-2.0.0.0::devel/libglade2

MAKE_ENV+=		GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/metacity
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity && \
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
