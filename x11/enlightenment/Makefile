# $OpenBSD: Makefile,v 1.77 2022/02/21 14:18:07 sthen Exp $

COMMENT=	themed window manager

V=		1.0.24
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
WANTLIB += freetype fribidi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += harfbuzz iconv intl m ogg pango-1.0 pangoft2-1.0
WANTLIB += pangoxft-1.0 pcre pthread sndio xcb z ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		${THEMES}.tar.gz

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
