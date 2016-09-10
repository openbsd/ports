# $OpenBSD: Makefile,v 1.68 2016/09/10 13:03:43 ajacoutot Exp $

COMMENT=	themed window manager

V=		1.0.9
DISTNAME=	e16-$V
PKGNAME=	enlightenment-$V
DOCS=		e16-docs-0.16.8.0.2
THEMES=		e16-themes-1.0.1
REVISION=	6

CATEGORIES=	x11

HOMEPAGE=	http://www.enlightenment.org/

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE Imlib2 SM X11 Xcomposite Xdamage Xext Xfixes
WANTLIB += Xft Xinerama Xrandr Xrender audiofile c expat ffi fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz m ogg pango-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += pcre pthread pthread-stubs sndio xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		${THEMES}.tar.gz

MODULES=	devel/gettext

AUTOCONF_VERSION=	2.65
AUTOMAKE_VERSION=	1.11
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS=	devel/glib2 \
		devel/libaudiofile \
		devel/pango \
		graphics/imlib2

RUN_DEPENDS=	devel/desktop-file-utils

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-sound_esound
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-extract:
	cp -f ${FILESDIR}/sound_sndio.c ${WRKSRC}/src

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal -I m4
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

post-configure:
	@cd ${WRKDIR}/${DOCS} && ${SETENV} ${CONFIGURE_ENV} \
	    /bin/sh ./configure ${CONFIGURE_ARGS}
	@cd ${WRKDIR}/${THEMES} && ${SETENV} ${CONFIGURE_ENV} \
	    /bin/sh ./configure ${CONFIGURE_ARGS}

post-install:
	@cd ${WRKDIR}/${DOCS} && ${SETENV} ${MAKE_ENV} \
	    ${_FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	    -f ${MAKE_FILE} ${FAKE_TARGET}
	cd ${WRKDIR}/${THEMES} && ${SETENV} ${MAKE_ENV} \
	    ${_FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	    -f ${MAKE_FILE} ${FAKE_TARGET}

.include <bsd.port.mk>
