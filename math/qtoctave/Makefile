# $OpenBSD: Makefile,v 1.2 2007/11/12 14:07:11 steven Exp $

COMMENT=	graphical front-end for octave

DISTNAME=	qtoctave-0.6.8
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
WANTLIB=	ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender \
		c fontconfig freetype glib-2.0 gthread-2.0 iconv intl \
		m png pthread stdc++ z

WRKDIST=	${WRKDIR}/project
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--qtdir=${MODQT4_QTDIR}

FAKE_FLAGS=	INSTALL_ROOT=${WRKINST}

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
