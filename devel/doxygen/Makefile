# $OpenBSD: Makefile,v 1.11 2009/08/10 06:31:07 kili Exp $

COMMENT-main=	source code documentation generator tool
COMMENT-gui=	GUI front-end for doxygen

VERSION=	1.5.4
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}p0
FULLPKGNAME-gui=doxygen-gui-${VERSION}
CATEGORIES=	devel textproc 

HOMEPAGE=	http://www.doxygen.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.stack.nl/pub/users/dimitri/

PSEUDO_FLAVORS=	gui
FLAVOR?=

USE_GMAKE=	Yes
MODULES=	converters/libiconv

LIB_DEPENDS-main=	png.>=4::graphics/png \
			${LIB_DEPENDS}

WANTLIB=	m c stdc++

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix ${WRKINST}${LOCALBASE} \
		--install /usr/bin/install \
		--dot ${LOCALBASE}/bin/dot

MULTI_PACKAGES=	-main
.if ${FLAVOR:Mgui}
CONFIGURE_ARGS+=--with-doxywizard
CONFIGURE_ENV=	QTDIR=${LOCALBASE}

MODULES+=	x11/qt3

MULTI_PACKAGES+=-gui
.endif

WANTLIB-gui=	${WANTLIB} X11 Xext pthread pthread-stubs xcb
LIB_DEPENDS-gui=${MODQT_LIB_DEPENDS} \
		${LIB_DEPENDS}
RUN_DEPENDS-gui=:doxygen-${VERSION}:${BUILD_PKGPATH}

WANTLIB-main=	${WANTLIB} z

MAKE_FLAGS+=	CXX=${CXX} CC=${CC} _CFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g' ${WRKSRC}/configure

.include <bsd.port.mk>
