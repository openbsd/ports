# !!! do not update blindly: sysutils/awscli requires a specific version

COMMENT=		Python RSA implementation

MODPY_DISTV=	4.7.2
DISTNAME=		rsa-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		4

CATEGORIES=		security

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS=		devel/py-asn1

.include <bsd.port.mk>
