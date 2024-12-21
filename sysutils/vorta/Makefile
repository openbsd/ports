COMMENT=	GUI for Borg Backup

MODPY_DISTV=	0.8.12
DISTNAME=	vorta-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	sysutils

# https://github.com/borgbase/vorta
HOMEPAGE=	https://vorta.borgbase.com/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

BUILD_DEPENDS=	devel/py-pip
RUN_DEPENDS=	databases/py-peewee \
		devel/py-appdirs \
		security/py-secretstorage \
		borgbackup-*:sysutils/borgbackup/1.4 \
		sysutils/py-psutil \
		x11/py-qt5

.include <bsd.port.mk>
