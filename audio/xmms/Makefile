# $OpenBSD: Makefile,v 1.20 2002/02/19 00:17:23 brad Exp $
# Uses pthreads

COMMENT=		"Multimedia player for the X Window System"
COMMENT-diskwriter=	"Disk writer output plugin for XMMS"
COMMENT-esd=		"Esound output plugin for XMMS"
COMMENT-vorbis=		"Ogg Vorbis input plugin for XMMS"
COMMENT-mikmod=		"Mikmod input plugin for XMMS"

VERSION=		1.2.6
DISTNAME=		xmms-${VERSION}
FULLPKGNAME=		xmms-${VERSION}
FULLPKGNAME-diskwriter=	xmms-diskwriter-${VERSION}
FULLPKGNAME-esd=	xmms-esd-${VERSION}
FULLPKGNAME-vorbis=	xmms-vorbis-${VERSION}
FULLPKGNAME-mikmod=	xmms-mikmod-${VERSION}
SUNDRIVER=		xmms_sun-${VERSION}
CATEGORIES=		audio
NEED_VERSION=		1.504
HOMEPAGE=		http://www.xmms.org

MAINTAINER=		Wilbern Cobb <vedge@csoft.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITE_SUBDIR=	1.2.x
MASTER_SITES=		http://www.xmms.org/files/%SUBDIR%/ \
			ftp://ftp.xmms.org/xmms/%SUBDIR%/ \
			ftp://ftp.sunet.se/pub/multimedia/xmms/%SUBDIR%/ \
			ftp://ftp.stealth.net/xmms/%SUBDIR%/

MASTER_SITES0=		http://vedge.com.ar/hack/ \
			ftp://vedge.com.ar/pub/xmms/ \
			http://mirror.csoft.org/xmms/

FLAVORS=		no_esd no_vorbis no_mikmod
FLAVOR?=
MULTI_PACKAGES=		-diskwriter
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

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --without-gnome

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		XML_CONFIG="${LOCALBASE}/bin/xml-config"

DISTFILES=		${DISTNAME}.tar.gz \
			${SUNDRIVER}.tar.gz:0

DOCS=			README NEWS
SUBST_VARS=		PKGNAME-diskwriter PKGNAME-vorbis PKGNAME-esd \
			PKGNAME-mikmod

.if defined(PACKAGING) 
. if ${SUBPACKAGE} == "-diskwriter"
RUN_DEPENDS=		::audio/xmms
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

.include <bsd.port.mk>
