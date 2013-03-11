# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:25 espie Exp $

COMMENT=		library used to interact with Git repositories

# There's no real stable release, but this is the most used
# version available.
MODPY_EGG_VERSION=	0.3.2
DISTNAME=		GitPython-${MODPY_EGG_VERSION}.RC1
PKGNAME=		py-${DISTNAME:S/.RC1//}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=G/GitPython/}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-gitdb

.include <bsd.port.mk>
