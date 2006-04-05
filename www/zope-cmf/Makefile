# $OpenBSD: Makefile,v 1.19 2006/04/05 09:42:17 bernd Exp $

COMMENT=	"Zope content management framework"

DISTNAME=	CMF-1.5.5
PKGNAME=	zope-${DISTNAME:L}p1
CATEGORIES=	www

HOMEPAGE=	http://cmf.zope.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# Zope Public License (ZPL) 2.0 <http://www.zope.org/Resources/ZPL>
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.zope.org/Products/CMF/${DISTNAME}/ \
		http://catai.net/distfiles/

MODULES=	www/zope

CMFDIRS=	CMFActionIcons CMFCalendar CMFCore CMFDefault \
		CMFSetup CMFTopic CMFUid DCWorkflow
DOCSDIR=	${PREFIX}/share/doc/zope-cmf

do-build:
.for i in ${CMFDIRS}
	${PYTHON_BIN} ${PYTHON_LIBDIR}/compileall.py ${WRKSRC}/${i} || true
.endfor

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
.for p in ${CMFDIRS}
	cd ${WRKSRC}; cp -R ${p} ${MODZOPE_PRODUCTSDIR}
.endfor
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.{stx,txt} ${DOCSDIR}
	${INSTALL_DATA_DIR} ${DOCSDIR}/imgs
	${INSTALL_DATA} ${WRKSRC}/docs/imgs/* ${DOCSDIR}/imgs 

.include <bsd.port.mk>
