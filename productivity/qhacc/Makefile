# $OpenBSD: Makefile,v 1.19 2013/03/11 11:37:55 espie Exp $

COMMENT=	qt home accounting program

DISTNAME=	qhacc-3.4
REVISION=	3
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
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 c m pthread stdc++ xcb
WANTLIB += ICE SM Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xmu Xrandr Xrender Xt Xxf86vm drm expat fontconfig
WANTLIB += freetype jpeg lcms mng png z

MODULES=	x11/qt3
USE_LIBTOOL=	Yes

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
