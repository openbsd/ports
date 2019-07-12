# $OpenBSD: Makefile,v 1.3 2019/07/12 20:50:02 sthen Exp $

COMMENT=	multi-language source code documentation generator

DISTNAME=	NaturalDocs-1.52
PKGNAME=	${DISTNAME:L}
CATEGORIES=	textproc devel

HOMEPAGE=	http://www.naturaldocs.org/

# AGPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=naturaldocs/}
EXTRACT_SUFX=	.zip

MODULES=	perl
PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}

DOC_DIR=	${PREFIX}/share/doc/naturaldocs
DATA_DIR=	${PREFIX}/share/NaturalDocs/

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/NaturalDocs.sh ${PREFIX}/bin/NaturalDocs
	${SUBST_CMD} ${PREFIX}/bin/NaturalDocs
	rm ${PREFIX}/bin/NaturalDocs.beforesubst
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/NaturalDocs ${DOC_DIR} ${DATA_DIR}
	cd ${WRKSRC}/Modules/NaturalDocs \
		&& cp -r . ${PREFIX}/${P5SITE}/NaturalDocs
	${INSTALL_SCRIPT} ${WRKSRC}/NaturalDocs ${DATA_DIR}
.for dir in Config Info JavaScript Styles
	${INSTALL_DATA_DIR} ${DATA_DIR}/${dir}
	cd ${WRKSRC}/${dir} && cp -r . ${DATA_DIR}/${dir}
.endfor
	cd ${WRKSRC}/Help && cp -r . ${DOC_DIR}

.include <bsd.port.mk>
