# $OpenBSD: Makefile,v 1.15 2013/03/19 13:07:13 nigel Exp $

COMMENT=	graphical front-end for octave

DISTNAME=	qtoctave-0.8.1
REVISION=	5
CATEGORIES=	math

HOMEPAGE=	http://qtoctave.wordpress.com/

# GPL v2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://forja.rediris.es/frs/download.php/352/

MODULES=	x11/qt4 \
		devel/gettext

RUN_DEPENDS=	math/octave
LIB_DEPENDS=	x11/qt4
WANTLIB +=	ICE QtGui QtXml SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB +=	freetype m pthread stdc++

WRKDIST=	${WRKDIR}/project
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--qtdir=${MODQT4_QTDIR}

DESTDIRNAME=	INSTALL_ROOT


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
