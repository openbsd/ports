# $OpenBSD: Makefile,v 1.7 2017/08/17 14:29:52 visa Exp $

# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT=	GUI front-end for doxygen

VERSION=	1.8.13
DISTNAME=	doxygen-${VERSION}.src
REVISION =	1
PKGNAME=	doxygen-gui-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtGui QtXml c m ${COMPILER_LIBCXX}

MASTER_SITES=	http://ftp.stack.nl/pub/users/dimitri/ \
		ftp://ftp.stack.nl/pub/users/dimitri/

LIB_DEPENDS=	${MODQT_LIB_DEPENDS}

MODULES=	devel/cmake \
		x11/qt4 \
		lang/python

MODPY_RUNDEP=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

BUILD_DEPENDS+=	devel/bison
BUILD_DEPENDS+=	converters/libiconv

RUN_DEPENDS=	devel/doxygen

CONFIGURE_ARGS=	-Dbuild_wizard:Bool=ON \
		-Dforce_qt4:Bool=ON

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/doxywizard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/doxywizard.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
