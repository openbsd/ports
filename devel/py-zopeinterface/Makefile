# $OpenBSD: Makefile,v 1.1.1.1 2006/07/01 12:46:51 alek Exp $

COMMENT=	"zope.interface package from Zope 3"

DISTNAME=	ZopeInterface-3.0.1
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	devel

HOMEPAGE=	http://zope.org/Products/ZopeInterface/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://www.zope.org/Products/ZopeInterface/3.0.1final/
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

do-regress: fake
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		${WRKINST}${MODPY_SITEPKG}/zope/testing/tests.py
	env PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} \
		${WRKINST}${MODPY_SITEPKG}/zope/interface/tests/test_verify.py

.include <bsd.port.mk>
