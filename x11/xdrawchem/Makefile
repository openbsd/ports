# $OpenBSD: Makefile,v 1.29 2019/08/18 06:47:04 bket Exp $

COMMENT=	two-dimensional molecule drawing program

DISTNAME=	xdrawchem-1.10.2
CATEGORIES=	x11 biology
REVISION=	1

HOMEPAGE=	https://www.woodsidelabs.com/chemistry/xdrawchem.php

MAINTAINER=	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=	${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB+=	Qt5Widgets Qt5Xml c m openbabel

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xdrawchem/}

EXTRACT_SUFX=	-1.rpmsrc.tar.gz

MODULES=	devel/qmake \
		x11/qt5
LIB_DEPENDS=	misc/openbabel>=2.2.3

CONFIGURE_ARGS=	--with-qtincdir=${MODQT_INCDIR} \
		--with-qtlibdir=${MODQT_LIBDIR}

NO_TEST=	Yes

.include <bsd.port.mk>
