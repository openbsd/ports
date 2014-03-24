# $OpenBSD: Makefile,v 1.32 2014/03/24 20:59:47 miod Exp $

# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT-main=	source code documentation generator tool
COMMENT-gui=	GUI front-end for doxygen

VERSION=	1.8.2
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}
FULLPKGNAME-gui=doxygen-gui-${VERSION}
CATEGORIES=	devel textproc

REVISION-main=	0
REVISION-gui=	0

HOMEPAGE=	http://www.doxygen.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ftp.stack.nl/pub/users/dimitri/ \
		ftp://ftp.stack.nl/pub/users/dimitri/

PSEUDO_FLAVORS=	no_gui bootstrap

USE_GMAKE=	Yes
MODULES=	converters/libiconv

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix ${WRKINST}${LOCALBASE} \
		--install /usr/bin/install \
		--dot ${LOCALBASE}/bin/dot

MULTI_PACKAGES=	-main -gui

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-gui}
CONFIGURE_ARGS+=--with-doxywizard
CONFIGURE_ENV=	QTDIR=${LOCALBASE}

MODULES+=	x11/qt4
.endif
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
# ld(1) fails
CONFIGURE_ARGS+= --english-only
.endif

BUILD_DEPENDS +=	devel/bison
COMMON_WANTLIB =	c m pthread stdc++ ${MODLIBICONV_WANTLIB}
COMMON_LIB_DEPENDS =	${MODLIBICONV_LIB_DEPENDS}

WANTLIB-main = ${COMMON_WANTLIB} z
LIB_DEPENDS-main = ${COMMON_LIB_DEPENDS}

WANTLIB-gui=	${COMMON_WANTLIB} ${MODQT_WANTLIB} QtGui QtXml \
		ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
LIB_DEPENDS-gui=${COMMON_LIB_DEPENDS} ${MODQT_LIB_DEPENDS}
RUN_DEPENDS-gui=doxygen-${VERSION}:${BUILD_PKGPATH}


MAKE_FLAGS+=	CXX=${CXX} CC=${CC} \
		_CFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS+=	DESTDIR=
WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
