# $OpenBSD: Makefile,v 1.51 2019/11/10 18:43:48 kmos Exp $

# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT=	source code documentation generator tool

VERSION=	1.8.16
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m pthread ${COMPILER_LIBCXX} xapian z

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	http://doxygen.nl/files/

LIB_DEPENDS=	converters/libiconv \
		databases/xapian-core

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

BUILD_DEPENDS+=	devel/bison \
		devel/git

RUN_DEPENDS+=	print/ghostscript/gnu \
		math/graphviz

CONFIGURE_ARGS+=-Dbuild_doc:Bool=ON \
		-Dbuild_app:Bool=ON \
		-Dbuild_search:Bool=ON

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

.include <bsd.port.mk>
