# $OpenBSD: Makefile,v 1.14 2001/10/08 16:24:20 naddy Exp $
# Uses pthreads

ONLY_FOR_ARCHS=	i386

COMMENT=		"Multimedia player for the X Window System"
COMMENT-esd=		"Esound output plugin for XMMS"
COMMENT-vorbis=		"Ogg Vorbis input plugin for XMMS"

VERSION=		1.2.5
DISTNAME=		xmms-${VERSION}
FULLPKGNAME=		xmms-${VERSION}
FULLPKGNAME-esd=	xmms-esd-${VERSION}
FULLPKGNAME-vorbis=	xmms-vorbis-${VERSION}
DISTDRIVER=		xmms_sun-${VERSION}-p2
CATEGORIES=		audio
NEED_VERSION=		1.435
HOMEPAGE=		http://www.xmms.org

MAINTAINER=		Wilbern Cobb <cobb@vedge.com.ar>

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
			ftp://vedge.com/ar/pub/xmms/

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

FLAVORS=		no_esd no_vorbis
FLAVOR?=
MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_esd}
MULTI_PACKAGES+=	-esd
.endif
.if !${FLAVOR:L:Mno_vorbis}
MULTI_PACKAGES+=	-vorbis
.endif

SUBPACKAGE?=

RUN_DEPENDS=		unzip:unzip-*:archivers/unzip
LIB_DEPENDS=		gtk.1.2::x11/gtk+ \
			xml.9::textproc/libxml1

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --without-gnome

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib" \
		XML_CONFIG="${LOCALBASE}/bin/xml-config" \
		LIBMIKMOD_CONFIG=/usr/bin/false

DISTFILES=		${DISTNAME}.tar.gz \
			${DISTDRIVER}.tar.gz:0

DOCS=			AUTHORS COPYING ChangeLog FAQ INSTALL NEWS \
			README TODO

SUBST_VARS=		MAINTAINER PKGNAME-vorbis PKGNAME-esd

.if defined(PACKAGING) 

.  if ${SUBPACKAGE} == "-esd"
LIB_DEPENDS=		esd.2::audio/esound
RUN_DEPENDS=		xmms::audio/xmms
.  endif
.  if ${SUBPACKAGE} == "-vorbis"
LIB_DEPENDS=		vorbis.0::audio/libvorbis
RUN_DEPENDS=		xmms::audio/xmms
.  endif
.else
.  if ${MULTI_PACKAGES:M-esd}
LIB_DEPENDS +=		esd.2::audio/esound
CONFIGURE_ARGS+=	--with-esd-prefix=${LOCALBASE}
.  else
CONFIGURE_ENV+=		ESD_CONFIG=/usr/bin/false
.  endif

.  if ${MULTI_PACKAGES:M-vorbis}
LIB_DEPENDS +=		vorbis.0::audio/libvorbis
CONFIGURE_ARGS+=	--with-ogg-prefix=${LOCALBASE}	\
			--with-vorbis-prefix=${LOCALBASE}
.  else
CONFIGURE_ENV+=		OGG_LIBS=its-not-my-godamn-planet-understand-monkey-boy
CONFIGURE_ENV+=		VORBIS_LIBS=its-not-my-godamn-planet-understand-monkey-boy
.  endif
.endif

post-extract:
	@mv -f ${WRKDIR}/${DISTDRIVER}/Output/sun ${WRKSRC}/Output/sun

pre-configure:
	@cd ${WRKSRC}/libxmms && autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms

.include <bsd.port.mk>
