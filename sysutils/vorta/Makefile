COMMENT=	GUI for Borg Backup

MODPY_EGG_VERSION=	0.8.9
REVISION=	1
DISTNAME=	vorta-${MODPY_EGG_VERSION}

CATEGORIES=	sysutils

# https://github.com/borgbase/vorta
HOMEPAGE=	https://vorta.borgbase.com/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

BUILD_DEPENDS=	devel/py-pip${MODPY_FLAVOR}
RUN_DEPENDS=	databases/py-peewee${MODPY_FLAVOR} \
		devel/py-appdirs${MODPY_FLAVOR} \
		security/py-paramiko${MODPY_FLAVOR} \
		security/py-secretstorage${MODPY_FLAVOR} \
		borgbackup-*:sysutils/borgbackup/1.2 \
		sysutils/py-psutil${MODPY_FLAVOR} \
		x11/py-qt5${MODPY_FLAVOR}

.include <bsd.port.mk>
