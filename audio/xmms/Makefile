# $OpenBSD: Makefile,v 1.1.1.1 2001/07/20 14:26:16 espie Exp $

COMMENT=		"XMMS multimedia player"
VER=			1.2.5

DISTNAME=		xmms-${VER}
DISTDRIVER=		xmms_sun-${VER}
CATEGORIES=		audio
NEED_VERSION=		1.402
HOMEPAGE=		http://www.xmms.org

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

MASTER_SITES0=		http://vedge.com.ar/hack/ 

FLAVORS=		esd vorbis
FLAVOR?=

LIB_DEPENDS=		gtk.1.2::x11/gtk+		\
			iconv.2::converters/libiconv	\
			intl.1::devel/gettext		\
			xml.9::textproc/libxml1

RUN_DEPENDS=		unzip::archivers/unzip

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --without-gnome

CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"	\
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"		\
			XML_CONFIG="${LOCALBASE}/bin/xml-config"

DISTFILES=		${DISTNAME}.tar.gz			    \
			${DISTDRIVER}.tar.gz:0

DOCS=			AUTHORS COPYING ChangeLog FAQ INSTALL NEWS  \
			README TODO

.if ${FLAVOR:L:Mesd}
LIB_DEPENDS+=		esd.2::audio/esound
.else
CONFIGURE_ENV+=		ESD_CONFIG=/no
.endif

# Trip up configure
CONFIGURE_ENV+=		LIBMIKMOD_CONFIG=/no

.if ${FLAVOR:L:Mvorbis}
LIB_DEPENDS+=		vorbis.0::audio/libvorbis
CONFIGURE_ARGS+=	--with-ogg-prefix=${LOCALBASE}	\
			--with-vorbis-prefix=${LOCALBASE}
.else
CONFIGURE_ENV+= 	OGG_LIBS=its-not-my-godamn-planet-understand-monkey-boy
.endif

SUBST_VARS=MAINTAINER

post-extract:
	@mv -f ${WRKDIR}/${DISTDRIVER}/Output/sun ${WRKSRC}/Output/sun; \

pre-build:
	@ln -sf ${LOCALBASE}/include/libintl.h ${WRKSRC}/intl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms

.include <bsd.port.mk>
