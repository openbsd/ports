# $OpenBSD: Makefile,v 1.49 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	themed window manager

DISTNAME=	e16-0.16.8.15
PKGNAME=	enlightenment-0.16.8.15p0
DOCS=		e16-docs-0.16.8.0.2
THEMES=		e16-themes-0.16.8.0.3

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

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=enlightenment/}

DISTFILES=	${DISTNAME}.tar.gz \
		${DOCS}.tar.gz \
		${THEMES}.tar.gz

MODULES=	devel/gettext
LIB_DEPENDS=	esd.>=2::audio/esound \
		Imlib2.>=2::graphics/imlib2

SEPARATE_BUILD=	concurrent

USE_X11=	Yes
USE_GMAKE=	Yes
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
