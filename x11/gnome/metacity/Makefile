# $OpenBSD: Makefile,v 1.10 2004/12/10 20:36:45 marcm Exp $

COMMENT=		"Boring window manager for the adult in you."

DISTNAME=		metacity-2.8.6
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/Metacity

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/metacity/2.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			glade-2.0.0.0::devel/libglade2 \
			startup-notification-1::devel/startup-notification

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/metacity
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/metacity && \
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/theme-format.txt ${PREFIX}/share/doc/metacity/; \
	${INSTALL_DATA} ${WRKSRC}/doc/metacity-theme.dtd ${PREFIX}/share/doc/metacity/

.include <bsd.port.mk>
