# $OpenBSD: Makefile,v 1.65 2013/05/31 15:34:59 ajacoutot Exp $

COMMENT=	themed window manager

V=		1.0.9
DISTNAME=	e16-$V
PKGNAME=	enlightenment-$V
DOCS=		e16-docs-0.16.8.0.2
THEMES=		e16-themes-1.0.1
REVISION=	3

CATEGORIES=	x11

HOMEPAGE=	http://www.enlightenment.org/

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE Imlib2 SM X11 Xcomposite Xdamage Xext Xfixes Xft
WANTLIB += Xinerama Xrandr Xrender audiofile c esd expat ffi fontconfig
WANTLIB += freetype glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangoft2-1.0 pangoxft-1.0 pcre pthread
WANTLIB += sndio xcb z harfbuzz

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		${THEMES}.tar.gz

MODULES=	devel/gettext
LIB_DEPENDS=	audio/esound \
		graphics/imlib2 \
		devel/glib2 \
		devel/pango

RUN_DEPENDS=	devel/desktop-file-utils

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
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
