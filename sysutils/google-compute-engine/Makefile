# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:41 sthen Exp $

COMMENT =		Google Cloud Platform (GCP) Compute Engine daemon

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		google-compute-engine-${MODPY_EGG_VERSION}
REVISION =		3

GH_ACCOUNT =		GoogleCloudPlatform
GH_PROJECT =		compute-image-packages
GH_TAGNAME =		20170609

CATEGORIES =		sysutils net

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-boto \
			net/py-netifaces \
			net/py-netaddr

pre-configure:
	cd ${WRKSRC}/google_compute_engine && ${SUBST_CMD} \
		config_manager.py instance_setup/instance_{config,setup}.py

.include <bsd.port.mk>
