# $OpenBSD: Makefile,v 1.6 2004/01/30 08:39:49 xsa Exp $

COMMENT=	"content management system built on top of Zope"

VERSION=	1.0.5
DISTNAME=	CMFPlone${VERSION}
PKGNAME=	plone-${VERSION}
CATEGORIES=	www

HOMEPAGE=	http://www.plone.org/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=plone/}

MODULES=	zope

RUN_DEPENDS+=	::www/zope-cmf

WRKDIST=	${WRKDIR}/CMFPlone-${VERSION}

PLONEITEMS=	CMFPlone DCWorkflow Formulator i18n

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	for p in ${PLONEITEMS}; do \
		cp -Rp ${WRKBUILD}/$$p ${MODZOPE_PRODUCTSDIR}; \
	done

.include <bsd.port.mk>
