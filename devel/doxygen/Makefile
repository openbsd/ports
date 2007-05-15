# $OpenBSD: Makefile,v 1.7 2007/05/15 08:27:27 steven Exp $

COMMENT-main=	"source code documentation generator tool"
COMMENT-gui=	"GUI front-end for doxygen"

VERSION=	1.4.7
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}p1
FULLPKGNAME-gui=doxygen-gui-${VERSION}
CATEGORIES=	devel textproc 

HOMEPAGE=	http://www.doxygen.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.stack.nl/pub/users/dimitri/

PSEUDO_FLAVORS=	gui
FLAVOR?=

LIB_DEPENDS-main=png.>=4::graphics/png

WANTLIB=	m c stdc++

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix ${WRKINST}${LOCALBASE} \
		--install /usr/bin/install \
		--make /usr/bin/make

MULTI_PACKAGES=	-main
.if ${FLAVOR:Mgui}
CONFIGURE_ARGS+=--with-doxywizard
CONFIGURE_ENV=	QTDIR=${LOCALBASE}

MODULES=	x11/qt3

MULTI_PACKAGES+=-gui
.endif

WANTLIB-gui=	${WANTLIB} X11 Xext pthread
LIB_DEPENDS-gui=${MODQT_LIB_DEPENDS}
RUN_DEPENDS-gui=:doxygen-${VERSION}:${BUILD_PKGPATH}

WANTLIB-main=	${WANTLIB} z

MAKE_FLAGS+=	CXX=${CXX} CC=${CC} _CFLAGS="${CXXFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"
WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

.include <bsd.port.mk>
