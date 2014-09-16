# $OpenBSD: Makefile,v 1.87 2014/09/16 19:56:09 miod Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT-main=		Multimedia player for the X Window System
COMMENT-vorbis=		Ogg Vorbis input plugin for XMMS
COMMENT-mikmod=		Mikmod input plugin for XMMS
COMMENT-mp3=		MP3 input plugin for XMMS

SHARED_ONLY=		Yes

VERSION=		1.2.11
DISTNAME=		xmms-${VERSION}
PKGNAME-main=		xmms-${VERSION}
REVISION-main=		13
PKGNAME-vorbis=		xmms-vorbis-${VERSION}
REVISION-vorbis=	6
PKGNAME-mikmod=		xmms-mikmod-${VERSION}
REVISION-mikmod=	7
PKGNAME-mp3=		xmms-mp3-${VERSION}
REVISION-mp3=		9
SHARED_LIBS=		xmms	4.2
CATEGORIES=		audio
HOMEPAGE=		http://www.xmms.org

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xi glib gmodule m pthread xcb \
			gtk>=1.2 gdk>=1.2 gthread>=1.2

V=			1.2.x
MASTER_SITES=		${HOMEPAGE}/files/$V/ \
			http://legacy.xmms2.org/

MULTI_PACKAGES=		-main -vorbis -mikmod -mp3

WANTLIB-main=		${WANTLIB} GL ICE c Xxf86vm SM sndio stdc++ \
			Xdamage Xfixes drm

MODULES=		devel/gettext
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} ${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=		archivers/unzip
LIB_DEPENDS=		x11/gtk+ \
			devel/glib

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

DOCS=			README NEWS FAQ

LIB_DEPENDS-vorbis=	${LIB_DEPENDS} audio/libvorbis
RUN_DEPENDS-vorbis=	audio/xmms
WANTLIB-vorbis=		${WANTLIB} ogg vorbis vorbisfile>=1

LIB_DEPENDS-mikmod=	${LIB_DEPENDS} audio/libmikmod
RUN_DEPENDS-mikmod=	audio/xmms
WANTLIB-mikmod=		${WANTLIB} sndio mikmod

LIB_DEPENDS-mp3=	${LIB_DEPENDS} ${BUILD_PKGPATH}=${VERSION}
WANTLIB-mp3=		${WANTLIB} xmms>=4 z

AUTO_ENV=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-patch:
	@mkdir -p ${WRKSRC}/Output/sndio
	@cp ${FILESDIR}/Makefile.am ${FILESDIR}/audio_sndio.c \
	    ${WRKSRC}/Output/sndio
.for dir in $${WRKSRC} $${WRKSRC}/libxmms
# Don't run aclocal because it will pull in a newer intl.m4 incompatible
# with autoconf-2.59.
	@cd ${dir}; \
	    touch -r aclocal.m4 configure.in; \
	    echo "Running autoheader-${AUTOCONF_VERSION} in ${dir}"; \
	    env ${AUTO_ENV} autoheader; \
	    echo "Running automake-${AUTOMAKE_VERSION} in ${dir}"; \
	    env ${AUTO_ENV} automake; \
	    echo "Running autoconf-${AUTOCONF_VERSION} in ${dir}"; \
	    env ${AUTO_ENV} autoconf
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmms
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/xmms

.include <bsd.port.mk>

.if ${MACHINE_ARCH} == "sh"
CFLAGS:=	${CFLAGS:N-O*}
.endif
