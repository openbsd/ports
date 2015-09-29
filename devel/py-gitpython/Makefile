# $OpenBSD: Makefile,v 1.4 2015/09/29 09:02:54 edd Exp $

COMMENT=		library used to interact with Git repositories

# There's no real stable release, but this is the most used
# version available.
MODPY_EGG_VERSION=	0.3.2rc1
REVISION =		0
DISTNAME=		GitPython-0.3.2.RC1
PKGNAME=		py-${DISTNAME:S/.RC1//}
CATEGORIES=		devel

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes
MODPY_PI_DIR =		G/GitPython

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
BUILD_DEPENDS +=	devel/py-setuptools>=18.2v0

RUN_DEPENDS=		devel/py-gitdb \
			devel/py-setuptools>=18.2v0

.include <bsd.port.mk>
