# $OpenBSD: Makefile,v 1.75 2019/08/10 08:39:48 feinerer Exp $

COMMENT=	themed window manager

V=		1.0.20
DISTNAME=	e16-$V
PKGNAME=	enlightenment-$V
DOCS=		e16-docs-0.16.8.0.2
THEMES=		e16-themes-1.0.2

CATEGORIES=	x11

HOMEPAGE=	https://www.enlightenment.org/e16

# X11
PERMIT_PACKAGE=	Yes

WANTLIB =  FLAC ICE Imlib2 SM X11 Xcomposite Xdamage Xext Xfixes Xft
WANTLIB += Xinerama Xrandr Xrender audiofile c expat ffi fontconfig
WANTLIB += freetype fribidi glib-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 harfbuzz iconv intl m ogg pango-1.0 pangoft2-1.0
WANTLIB += pangoxft-1.0 pcre pthread sndio xcb z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		${THEMES}.tar.gz

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
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
CONFIGURE_ARGS+= --enable-sound=sndio \
		 --with-sndldr=audiofile
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-extract:
	cp -f ${FILESDIR}/sound_sndio.c ${WRKSRC}/src

do-gen:
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} aclocal -I m4
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} autoconf
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} autoheader
	cd ${WRKSRC} && ${SETENV} ${AUTOCONF_ENV} automake

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
