# $OpenBSD: Makefile,v 1.14 2019/11/10 18:24:17 kmos Exp $

# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT=	GUI front-end for doxygen

VERSION=	1.8.16
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-gui-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	http://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets Qt5Xml
WANTLIB += c m

COMPILER =	base-clang ports-gcc base-gcc

MASTER_SITES=	http://doxygen.nl/files/

LIB_DEPENDS=	${MODQT_LIB_DEPENDS}

MODULES=	devel/cmake \
		x11/qt5 \
		lang/python

MODPY_RUNDEP=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

BUILD_DEPENDS+=	devel/bison \
		devel/git \
		converters/libiconv

RUN_DEPENDS=	devel/doxygen

CONFIGURE_ARGS=	-Dbuild_wizard=ON \

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/doxywizard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/doxywizard.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
