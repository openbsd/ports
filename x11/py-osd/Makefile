# $OpenBSD: Makefile,v 1.16 2019/07/12 20:51:19 sthen Exp $

COMMENT=	python bindings to the XOSD library

DISTNAME=	pyosd-0.2.14
PKGNAME=	${DISTNAME:S/^py/py-/}
REVISION=	7
CATEGORIES=	x11

HOMEPAGE=	http://ichi2.net/pyosd/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	xosd pthread ${MODPY_WANTLIB}

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

LIB_DEPENDS=	x11/xosd

NO_TEST=	Yes

pre-build:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g" ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA} ${WRKSRC}/pyosd.html ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-osd
	${INSTALL_DATA_DIR} ${PREFIX}/share/py-osd
	${INSTALL_SCRIPT} ${WRKSRC}/modules/*.py ${PREFIX}/share/py-osd

.include <bsd.port.mk>
