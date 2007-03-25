# $OpenBSD: Makefile,v 1.2 2007/03/25 10:24:52 djm Exp $

COMMENT=	"simplified packaging system for Python modules"

DISTNAME=	setuptools-0.6c5
PKGNAME=	${DISTNAME:S/^/py-/}
CATEGORIES=	devel
PKG_ARCH=	*

MAINTAINER=	Damien Miller <djm@openbsd.org>

MASTER_SITES=	http://cheeseshop.python.org/packages/source/s/setuptools/
HOMEPAGE=	http://peak.telecommunity.com/DevCenter/setuptools

# Zope Public License or Python Software Foundation license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

# Override automatic py-setuptools depend to avoid recursion
MODPY_SETUPUTILS_DEPEND=

.include <bsd.port.mk>
