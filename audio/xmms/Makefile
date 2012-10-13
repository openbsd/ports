# $OpenBSD: Makefile,v 1.82 2012/10/13 21:58:48 jasper Exp $

COMMENT-main=		Multimedia player for the X Window System
COMMENT-vorbis=		Ogg Vorbis input plugin for XMMS
COMMENT-mikmod=		Mikmod input plugin for XMMS
COMMENT-mp3=		MP3 input plugin for XMMS

SHARED_ONLY=		Yes

VERSION=		1.2.11
DISTNAME=		xmms-${VERSION}
PKGNAME-main=		xmms-${VERSION}
REVISION-main=		12
PKGNAME-vorbis=		xmms-vorbis-${VERSION}
REVISION-vorbis=	5
PKGNAME-mikmod=		xmms-mikmod-${VERSION}
REVISION-mikmod=	6
PKGNAME-mp3=		xmms-mp3-${VERSION}
REVISION-mp3=		8
SHARED_LIBS=		xmms	4.2
CATEGORIES=		audio
HOMEPAGE=		http://www.xmms.org

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext Xi glib gmodule m xcb
WANTLIB += gtk>=1.2 gdk>=1.2 gthread>=1.2

V=			1.2.x
MASTER_SITES=		${HOMEPAGE}/files/$V/ \
			http://legacy.xmms2.org/

MULTI_PACKAGES=		-main -vorbis -mikmod -mp3

WANTLIB-main=		${WANTLIB} GL ICE c Xxf86vm SM pthread sndio stdc++ \
			Xdamage Xfixes drm

MODULES=		devel/gettext
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} ${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=		archivers/unzip
LIB_DEPENDS=		x11/gtk+ \
			devel/glib

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.9
CONFIGURE_ARGS=		--without-gnome \
			--disable-esd \
			--disable-oss \
			--enable-ipv6 \
			--with-ogg-prefix=${LOCALBASE} \
			--with-vorbis-prefix=${LOCALBASE} \
			--with-mikmod-prefix=${LOCALBASE}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS:C/ *$//} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.if ${MACHINE_ARCH} == "sh"
CFLAGS +=		-O0
.endif

DOCS=			README NEWS FAQ

LIB_DEPENDS-vorbis=	${LIB_DEPENDS} audio/libvorbis
RUN_DEPENDS-vorbis=	audio/xmms
WANTLIB-vorbis=		${WANTLIB} ogg vorbis vorbisfile>=1

LIB_DEPENDS-mikmod=	${LIB_DEPENDS} audio/libmikmod
RUN_DEPENDS-mikmod=	audio/xmms
WANTLIB-mikmod=		${WANTLIB} sndio mikmod

LIB_DEPENDS-mp3=	${LIB_DEPENDS} ${BUILD_PKGPATH}=${VERSION}
WANTLIB-mp3=		${WANTLIB} xmms>=4 z

post-patch:
	@mkdir -p ${WRKSRC}/Output/sndio
	@cp ${FILESDIR}/{Makefile.am,audio_sndio.c} ${WRKSRC}/Output/sndio
.for dir in $${WRKSRC} $${WRKSRC}/libxmms
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
	cd ${dir} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms

.include <bsd.port.mk>
