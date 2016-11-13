# $OpenBSD: Makefile,v 1.38 2016/11/13 23:34:17 jca Exp $

# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT-main=	source code documentation generator tool
COMMENT-gui=	GUI front-end for doxygen

VERSION=	1.8.12
DISTNAME=	doxygen-${VERSION}.src
PKGNAME-main=	doxygen-${VERSION}
FULLPKGNAME-gui=doxygen-gui-${VERSION}

REVISION-main=	0
REVISION-gui=	0

CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ftp.stack.nl/pub/users/dimitri/ \
		ftp://ftp.stack.nl/pub/users/dimitri/

MULTI_PACKAGES=	-main -gui
PSEUDO_FLAVORS=	no_gui bootstrap

WANTLIB-main +=	c iconv m pthread stdc++ xapian z
WANTLIB-gui +=	QtCore QtGui QtXml c m stdc++

LIB_DEPENDS-main=	converters/libiconv \
			databases/xapian-core

LIB_DEPENDS-gui=	${MODQT_LIB_DEPENDS}

RUN_DEPENDS-gui= doxygen-${VERSION}:${BUILD_PKGPATH}

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-gui}
CONFIGURE_ARGS+=-Dbuild_wizard:Bool=ON
CONFIGURE_ARGS+=-Dforce_qt4:Bool=ON
MODULES+=	x11/qt4
.endif
.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
# ld(1) fails
CONFIGURE_ARGS+=-Denglish_only:Bool=ON
.endif

BUILD_DEPENDS+=	devel/bison

RUN_DEPENDS+=	print/ghostscript/gnu \
		math/graphviz

CONFIGURE_ARGS+=-Dbuild_doc:Bool=ON
CONFIGURE_ARGS+=-Dbuild_app:Bool=ON
CONFIGURE_ARGS+=-Dbuild_search:Bool=ON

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_TEST=	Yes

.include <bsd.port.mk>
