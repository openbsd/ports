# $OpenBSD: Makefile,v 1.25 2002/08/07 22:34:54 naddy Exp $

COMMENT=		"Multimedia player for the X Window System"
COMMENT-gnome=		"GNOME applet for XMMS"
COMMENT-esd=		"Esound output plugin for XMMS"
COMMENT-vorbis=		"Ogg Vorbis input plugin for XMMS"
COMMENT-mikmod=		"Mikmod input plugin for XMMS"

VERSION=		1.2.7
DISTNAME=		xmms-${VERSION}
PKGNAME-gnome=		xmms-gnome-${VERSION}
PKGNAME-esd=		xmms-esd-${VERSION}
PKGNAME-vorbis=		xmms-vorbis-${VERSION}
PKGNAME-mikmod=		xmms-mikmod-${VERSION}
SUNDRIVER=		xmms_sun-${VERSION}
CATEGORIES=		audio
HOMEPAGE=		http://www.xmms.org

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

V=			1.2.x
MASTER_SITES=		http://www.xmms.org/files/$V/ \
			ftp://ftp.xmms.org/xmms/$V/ \
			ftp://ftp.sunet.se/pub/multimedia/xmms/$V/ \
			ftp://ftp.stealth.net/xmms/$V/

MASTER_SITES0=		http://vedge.com.ar/hack/ \
			http://mirror.csoft.org/xmms/

PSEUDO_FLAVORS=		no_gnome no_esd no_vorbis no_mikmod
FLAVOR?=
MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_gnome}
MULTI_PACKAGES+=	-gnome
.endif
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+=	-esd
.endif
.if !${FLAVOR:L:Mno_vorbis}
MULTI_PACKAGES+=	-vorbis
.endif
.if !${FLAVOR:L:Mno_mikmod}
MULTI_PACKAGES+=	-mikmod
.endif

SUBPACKAGE?=

RUN_DEPENDS=		:unzip-*:archivers/unzip
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			xml.9::textproc/libxml1

USE_LIBTOOL=		Yes
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		XML_CONFIG="${LOCALBASE}/bin/xml-config"

DISTFILES=		${DISTNAME}.tar.gz \
			${SUNDRIVER}.tar.gz:0

DOCS=			README NEWS


.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
RUN_DEPENDS=		::audio/xmms
LIB_DEPENDS+=	gnome.36,gnomesupport.0,gnomeui.46,art_lgpl.4::x11/gnome/libs \
		panel_applet.0::x11/gnome/core
. endif
. if ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=		esd.2::audio/esound
RUN_DEPENDS=		::audio/xmms
. endif
. if ${SUBPACKAGE} == "-vorbis"
LIB_DEPENDS=		vorbis.0,vorbisfile.1::audio/libvorbis
RUN_DEPENDS=		::audio/xmms
. endif
. if ${SUBPACKAGE} == "-mikmod"
LIB_DEPENDS=		mikmod.0::audio/libmikmod
RUN_DEPENDS=		::audio/xmms
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=	gnome.36,gnomesupport.0,gnomeui.46,art_lgpl.4::x11/gnome/libs \
		panel_applet.0::x11/gnome/core
CONFIGURE_ARGS+=	--with-gnome=${LOCALBASE}
CONFIGURE_ENV+=		CPP_FLAGS="-I${LOCALBASE}/include"
. else
CONFIGURE_ARGS+=	--without-gnome
. endif
. if ${MULTI_PACKAGES:M-esd}
LIB_DEPENDS+=		esd.2::audio/esound
CONFIGURE_ARGS+=	--with-esd-prefix=${LOCALBASE}
. else
CONFIGURE_ARGS+=	--disable-esd
. endif
. if ${MULTI_PACKAGES:M-vorbis}
LIB_DEPENDS+=		vorbis.0,vorbisfile.1::audio/libvorbis
CONFIGURE_ARGS+=	--with-ogg-prefix=${LOCALBASE}	\
			--with-vorbis-prefix=${LOCALBASE}
. else
CONFIGURE_ARGS+=	--disable-vorbis
. endif
. if ${MULTI_PACKAGES:M-mikmod}
LIB_DEPENDS+=		mikmod.2::audio/libmikmod
CONFIGURE_ARGS+=	--with-mikmod-prefix=${LOCALBASE}
. else
CONFIGURE_ARGS+=	--disable-mikmod
. endif
.endif

post-extract:
	@mv -f ${WRKDIR}/${SUNDRIVER} ${WRKSRC}/Output/sun

pre-configure:
	@cd ${WRKSRC}/libxmms && autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms
.if ${MULTI_PACKAGES:M-gnome}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmms-gnome
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/xmms-gnome
.endif


.include <bsd.port.mk>
