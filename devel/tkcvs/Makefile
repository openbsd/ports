# $OpenBSD: Makefile,v 1.35 2019/07/12 20:46:02 sthen Exp $

COMMENT=	graphical frontend to CVS
DISTNAME=	tkcvs-8.2.3
CATEGORIES=	devel

HOMEPAGE=	https://www.twobarleycorns.net/tkcvs.html

MAINTAINER=	Currell Berry <currellberry@gmail.com>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkcvs/} \
		https://www.twobarleycorns.net/

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_RUN_DEPENDS}
RUN_DEPENDS=	${MODTK_RUN_DEPENDS} \
		devel/tkdiff

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	cd ${WRKSRC} && $(MODTCL_BIN) ./doinstall.tcl -nox ${PREFIX}
	rm ${PREFIX}/bin/tkdiff
	cd ${PREFIX}/bin && ${MODTCL_WISH_ADJ} tkcvs

.include <bsd.port.mk>
