# $OpenBSD: Makefile,v 1.9 2004/10/20 20:05:30 xsa Exp $

COMMENT=	"content management system built on top of Zope"

DISTNAME=	Plone-2.0.4
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

# XXX fix permissions
post-install:
	@chmod -R a+rX ${MODZOPE_PRODUCTSDIR}/CMFFormController

.include <bsd.port.mk>
