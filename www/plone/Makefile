# $OpenBSD: Makefile,v 1.8 2004/08/03 12:13:33 xsa Exp $

COMMENT=	"content management system built on top of Zope"

DISTNAME=	Plone-2.0.3
PKGNAME=	${DISTNAME:L}
CATEGORIES=	www

HOMEPAGE=	http://www.plone.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plone/}

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-cmf

PLONEITEMS=	CMFActionIcons CMFPlone CMFFormController \
		CMFQuickInstallerTool BTreeFolder2 \
		Formulator GroupUserFolder PlacelessTranslationService

do-build:
.for i in ${PLONEITEMS}
	${PYTHON_BIN} ${PYTHON_LIBDIR}/compileall.py ${WRKSRC}/${i} || true
.endfor

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
.for p in ${PLONEITEMS}
	cd ${WRKBUILD}; cp -R ${p} ${MODZOPE_PRODUCTSDIR}
.endfor

.include <bsd.port.mk>
