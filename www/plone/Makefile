# $OpenBSD: Makefile,v 1.18 2006/10/03 10:02:47 mbalmer Exp $

COMMENT=	"content management system built on top of Zope"

DISTNAME=	Plone-2.1.4
PKGNAME=	${DISTNAME:L}
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

RUN_DEPENDS=	:python-expat-${MODZOPE_PYTHON_VERSION}*:lang/python/${MODZOPE_PYTHON_VERSION},-expat \
		::graphics/py-Imaging

do-install:
	${INSTALL_PROGRAM_DIR} ${MODZOPE_PRODUCTSDIR}
	cp -R ${WRKBUILD}/* ${MODZOPE_PRODUCTSDIR}
	rm -r ${MODZOPE_PRODUCTSDIR}/BTreeFolder2

.include <bsd.port.mk>
