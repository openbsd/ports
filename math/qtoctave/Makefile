# $OpenBSD: Makefile,v 1.6 2009/08/10 06:32:43 kili Exp $

COMMENT=	graphical front-end for octave

DISTNAME=	qtoctave-0.8.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	math

HOMEPAGE=	http://qtoctave.wordpress.com/

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://forja.rediris.es/frs/download.php/352/

MODULES=	x11/qt4

RUN_DEPENDS=	::math/octave
LIB_DEPENDS=	QtGui,QtXml::x11/qt4
WANTLIB=	ICE SM X11 Xext Xi Xinerama Xrender \
		c fontconfig freetype glib-2.0 gthread-2.0 iconv intl \
		m png pthread pthread-stubs stdc++ xcb z expat gobject-2.0

WRKDIST=	${WRKDIR}/project
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--qtdir=${MODQT4_QTDIR}

DESTDIRNAME=	INSTALL_ROOT

USE_X11=	Yes

QTOCTHELP_PATH=	${PREFIX}/share/doc/qtoctave
OCTHELP_PATH=	${LOCALBASE}/share/doc/octave/interpreter

pre-configure:
	@perl -pi -e "s,/home/lucas/usr/,${PREFIX},g" \
		${WRKSRC}/qtoctave/qtoctave.pro \
		${WRKSRC}/widgetserver/widgetserver.pro \
		${WRKSRC}/qtoctave/configure.h
	@perl -pi -e "s,!!OCTHELP_PATH!!,${OCTHELP_PATH}/index.html,;" \
		-e "s,!!QTOCTHELP_PATH!!,${QTOCTHELP_PATH}/index.html," \
		${WRKSRC}/qtoctave/configure.h
	@perl -pi -e "s,!!QTOCTHELP_PATH!!,${QTOCTHELP_PATH}," \
		${WRKSRC}/qtoctave/qtoctave.pro

.include <bsd.port.mk>
