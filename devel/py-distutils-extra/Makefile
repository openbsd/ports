# $OpenBSD: Makefile,v 1.2 2009/05/08 10:28:35 jasper Exp $

COMMENT=		add support for i18n, documentation and icons to distutils

VERSION=		1.91.2
DISTNAME=		python-distutils-extra_${VERSION}
PKGNAME=		py-distutils-extra-${VERSION}p0

CATEGORIES=		devel

HOMEPAGE=		http://www.glatzor.de/projects/python-distutils-extra/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		https://launchpad.net/ubuntu/hardy/+source/python-distutils-extra/${VERSION}/+files/

MODULES=		lang/python
MODPY_EGG_VERSION=	0.90
MODPY_SETUPTOOLS=	Yes

WRKSRC= 		${WRKDIR}/debian/

# Pointless test that checks if the bzr checkout builds.
NO_REGRESS=		Yes

.include <bsd.port.mk>
