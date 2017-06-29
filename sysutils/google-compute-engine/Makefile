# $OpenBSD: Makefile,v 1.1.1.1 2017/06/29 14:35:10 ajacoutot Exp $

COMMENT =		Google Cloud Platform (GCP) Compute Engine daemon

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		google-compute-engine-${MODPY_EGG_VERSION}

GH_ACCOUNT =		GoogleCloudPlatform
GH_PROJECT =		compute-image-packages
GH_TAGNAME =		20170609

CATEGORIES =		sysutils net

MAINTAINER =		Helen Koike <helen.koike@collabora.com>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-boto \
			net/py-netifaces \
			net/py-netaddr

TEST_DEPENDS =		${RUN_DEPENDS}

pre-configure:
	cd ${WRKSRC}/google_compute_engine && ${SUBST_CMD} \
		config_manager.py instance_setup/instance_{config,setup}.py

.include <bsd.port.mk>
