# $OpenBSD: Makefile,v 1.24 2012/04/13 16:08:20 sthen Exp $

# Memory hog, stuck for days on the same file during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	sh

COMMENT-main=	source code documentation generator tool
COMMENT-gui=	GUI front-end for doxygen

VERSION=	1.7.2
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}
FULLPKGNAME-gui=doxygen-gui-${VERSION}
REVISION-main=	3
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
.if ${ARCH:Mmips64} || ${ARCH:Mmips64el}
# ld(1) fails
CONFIGURE_ARGS+= --english-only
.endif

BUILD_DEPENDS +=	devel/bison
COMMON_WANTLIB =	c m pthread stdc++ ${MODLIBICONV_WANTLIB}
COMMON_LIB_DEPENDS =	${MODLIBICONV_LIB_DEPENDS}

WANTLIB-main = ${COMMON_WANTLIB} z
LIB_DEPENDS-main = ${COMMON_LIB_DEPENDS}

WANTLIB-gui=	${COMMON_WANTLIB} ${MODQT_WANTLIB} QtGui QtXml
LIB_DEPENDS-gui=${COMMON_LIB_DEPENDS} ${MODQT_LIB_DEPENDS}
RUN_DEPENDS-gui=doxygen-${VERSION}:${BUILD_PKGPATH}


MAKE_FLAGS+=	CXX=${CXX} CC=${CC} \
		_CFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS+=	DESTDIR=
WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_REGRESS=	Yes
VMEM_WARNING=	Yes

.include <bsd.port.mk>
