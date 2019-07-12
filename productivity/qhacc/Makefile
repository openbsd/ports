# $OpenBSD: Makefile,v 1.29 2019/07/12 20:48:59 sthen Exp $

COMMENT=	qt home accounting program

DISTNAME=	qhacc-3.4
REVISION=	9
CATEGORIES=	productivity x11

HOMEPAGE=	http://qhacc.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qhacc/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

SO_VERSION=	0.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
.for _lib in acct arcio aves balances budget cliimpio dbbase deltas \
doublebargraph doublelinegraph extprgio filedbio graphbase journal mbudget \
monthlygraph nativedbio payee piegraph profitloss qhacc qhaccext qhaccutils \
qifio shares singlebargraph singlelinegraph tbal trans upgradeio xmlio
SHARED_LIBS+=   ${_lib} ${SO_VERSION}
.endfor

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += GL ICE SM X11 X11-xcb Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm c drm expat
WANTLIB += fontconfig freetype glapi jpeg lcms m mng png pthread
WANTLIB += ${COMPILER_LIBCXX} xcb xcb-dri2 xcb-glx z
WANTLIB += xcb-dri3 xcb-present xcb-sync xcb-xfixes xshmfence

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	x11/qt3

MAKE_ENV=	QTDIR=${MODQT_LIBDIR} LOCALBASE=${LOCALBASE} X11BASE=${X11BASE}
MAKE_FLAGS=	QTLIBDIR=${MODQT_LIBDIR} QTINCDIR=${MODQT_INCDIR}

CONFIGURE_ENV=	QTDIR=${MODQT_LIBDIR} \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lm" \
		LIBQVERSION=${SO_VERSION}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${MODQT_CONFIGURE_ARGS}

DOCDIR= 		${PREFIX}/share/doc/qhacc

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} FILE_FORMAT ${DOCDIR}

.include <bsd.port.mk>
