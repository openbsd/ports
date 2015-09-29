# $OpenBSD: Makefile,v 1.5 2015/09/29 10:51:54 sthen Exp $

COMMENT=		library used to interact with Git repositories

# There's no real stable release, but this is the most used
# version available.
MODPY_EGG_VERSION=	0.3.2rc1
REVISION =		1
DISTNAME=		GitPython-0.3.2.RC1
PKGNAME=		py-${DISTNAME:S/.RC1//}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		G/GitPython

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-gitdb

.include <bsd.port.mk>
