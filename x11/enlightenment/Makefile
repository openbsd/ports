# $OpenBSD: Makefile,v 1.54 2011/04/27 11:57:02 pea Exp $

COMMENT=	themed window manager

DISTNAME=	e16-1.0.7
PKGNAME=	enlightenment-1.0.7
DOCS=		e16-docs-0.16.8.0.2
THEMES=		e16-themes-1.0.1

CATEGORIES=	x11

HOMEPAGE=	http://www.enlightenment.org/

MAINTAINER=	Paul Wang <op21@squish.org>

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama Xrandr Xrender Xxf86vm audiofile c expat
WANTLIB += fontconfig freetype m sndio z pthread-stubs xcb
WANTLIB += esd Imlib2 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 
WANTLIB += pcre pthread pango-1.0 pangoft2-1.0 pangoxft-1.0

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

SEPARATE_BUILD=	concurrent

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-configure:
	@cd ${WRKDIR}/${DOCS} && ${SETENV} ${CONFIGURE_ENV} \
	    ${SH} ./configure ${CONFIGURE_ARGS}
	@cd ${WRKDIR}/${THEMES} && ${SETENV} ${CONFIGURE_ENV} \
	    ${SH} ./configure ${CONFIGURE_ARGS}

post-install:
	@cd ${WRKDIR}/${DOCS} && ${SETENV} ${MAKE_ENV} \
	    ${_FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	    -f ${MAKE_FILE} ${FAKE_TARGET}
	cd ${WRKDIR}/${THEMES} && ${SETENV} ${MAKE_ENV} \
	    ${_FAKE_SETUP} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
	    -f ${MAKE_FILE} ${FAKE_TARGET}

.include <bsd.port.mk>
