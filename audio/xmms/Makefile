# $OpenBSD: Makefile,v 1.45 2005/12/23 16:37:10 espie Exp $

COMMENT=		"Multimedia player for the X Window System"
COMMENT-esd=		"Esound output plugin for XMMS"
COMMENT-vorbis=		"Ogg Vorbis input plugin for XMMS"
COMMENT-mikmod=		"Mikmod input plugin for XMMS"
COMMENT-mp3=		"MP3 input plugin for XMMS"

VERSION=		1.2.10
DISTNAME=		xmms-${VERSION}
PKGNAME=		xmms-${VERSION}p6
PKGNAME-esd=		xmms-esd-${VERSION}p5
PKGNAME-vorbis=		xmms-vorbis-${VERSION}p5
PKGNAME-mikmod=		xmms-mikmod-${VERSION}p5
PKGNAME-mp3=		xmms-mp3-${VERSION}p5
SHARED_LIBS=		xmms	4.1
MODGNU_SHARED_LIBS=	xmms	'-export-dynamic'
CATEGORIES=		audio
HOMEPAGE=		http://www.xmms.org

MAINTAINER=		Robert Nagy <robert@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi glib gmodule m pthread

V=			1.2.x
MASTER_SITES=		${HOMEPAGE}/files/$V/ \
			ftp://ftp.xmms.org/xmms/$V/ \
			ftp://ftp.sunet.se/pub/multimedia/xmms/$V/ \
			ftp://ftp.stealth.net/xmms/$V/

PSEUDO_FLAVORS=		no_esd no_vorbis no_mikmod no_mp3
FLAVOR?=
MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+=	-esd
.endif
.if !${FLAVOR:L:Mno_vorbis}
MULTI_PACKAGES+=	-vorbis
.endif
.if !${FLAVOR:L:Mno_mikmod}
MULTI_PACKAGES+=	-mikmod
.endif
.if !${FLAVOR:L:Mno_mp3}
MULTI_PACKAGES+=	-mp3
.endif

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

SUBPACKAGE?=

.if empty(SUBPACKAGE)
WANTLIB+=		GL ICE c Xxf86vm SM
.endif

MODULES=		devel/gettext
RUN_DEPENDS=		:unzip-*:archivers/unzip
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+ \
			gthread.1.2::devel/glib

USE_X11=		Yes
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--without-gnome \
			--enable-ipv6

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

DOCS=			README NEWS FAQ

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-esd"
LIB_DEPENDS+=		esd.2::audio/esound
RUN_DEPENDS=		::audio/xmms
WANTLIB+=		audiofile
. endif
. if ${SUBPACKAGE} == "-vorbis"
LIB_DEPENDS+=		vorbis.0,vorbisfile.1::audio/libvorbis
RUN_DEPENDS=		::audio/xmms
WANTLIB+=		ogg
. endif
. if ${SUBPACKAGE} == "-mikmod"
LIB_DEPENDS+=		mikmod.0::audio/libmikmod
RUN_DEPENDS=		::audio/xmms
. endif
. if ${SUBPACKAGE} == "-mp3"
PERMIT_PACKAGE_CDROM=	"patent issues"
PERMIT_DISTFILES_CDROM= "patent issues"
LIB_DEPENDS+=		xmms.4:xmms-$(VERSION)*:${FULLPKGPATH:S/,-mp3//}
WANTLIB+=		z
. endif
.else
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

pre-configure:
	@cd ${WRKSRC}/libxmms && ${LOCALBASE}/bin/autoconf-${AUTOCONF_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms

.include <bsd.port.mk>
