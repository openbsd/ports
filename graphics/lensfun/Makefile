# $OpenBSD: Makefile,v 1.15 2015/07/05 12:03:34 zhuk Exp $

COMMENT=	library to adjust for photographic lens characteristics
DISTNAME=	lensfun-0.2.7
REVISION=	2

SHARED_LIBS=	lensfun	1.0
SHARED_LIBS+=	auxfun	0.0

CATEGORIES=	graphics
HOMEPAGE=	http://lensfun.sourceforge.net/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c glib-2.0 m png pthread stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lensfun.berlios/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/cmake devel/gettext
BUILD_DEPENDS=		devel/doxygen>=1.7.2

LIB_DEPENDS=		devel/glib2 \
			graphics/png

CONFIGURE_ARGS=		-DBUILD_DOC=Yes \
			-DBUILD_AUXFUN=Yes

TEST_PROGS=		tfun example

do-test:
.for p in ${TEST_PROGS}
	cd ${WRKBUILD}/tests; ./$p
.endfor

DOC_DIR=		${PREFIX}/share/doc/lensfun
MANUAL_DIR=		${DOC_DIR}/manual

post-install:
	cd ${PREFIX}/bin; rm ${TEST_PROGS}
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*-3.0.txt ${DOC_DIR}
	rm -Rf ${MANUAL_DIR}
	mv ${PREFIX}/share/doc/${DISTNAME}.* ${MANUAL_DIR}

.include <bsd.port.mk>
