# $OpenBSD: Makefile,v 1.3 2010/07/12 22:07:41 sthen Exp $

COMMENT=	Zolera SOAP Infrastructure

MODPY_EGG_VERSION=2.0
DISTNAME=	ZSI-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0
CATEGORIES=	net devel

HOMEPAGE=	http://pywebsvcs.sourceforge.net/

# Zope Public License (ZPL)
# Python 2.0 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pywebsvcs/}

MODULES=	lang/python

MODPY_SETUPTOOLS=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/py-xml

# regress needs network access
REGRESS_IS_INTERACTIVE=Yes
REGRESS_DEPENDS=::${BUILD_PKGPATH}

do-regress:
	find ${WRKSRC}/test -name \*.py -exec ${MODPY_BIN} {} \;

.include <bsd.port.mk>
