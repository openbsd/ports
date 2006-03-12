# $OpenBSD: Makefile,v 1.15 2006/03/12 12:23:13 aanriot Exp $

COMMENT=	"content management system built on top of Zope"

DISTNAME=	Plone-2.1.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://www.plone.org/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plone/}

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-cmf

PLONEITEMS=	CMFPlone CMFQuickInstallerTool GroupUserFolder \
		PlacelessTranslationService PloneLanguageTool  \
		PloneTranslations

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
