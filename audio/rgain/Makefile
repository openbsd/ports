# $OpenBSD: Makefile,v 1.5 2020/02/03 20:40:38 sthen Exp $

COMMENT=	multi-format tools and Python module for ReplayGain

# rgain no longer updated by original maintainer; newer (2019/07) py3 fork
# at https://github.com/chaudum/rgain but it seems a bit early still

MODPY_EGG_VERSION= 1.3.4
DISTNAME=	rgain-${MODPY_EGG_VERSION}
WRKDIST=	${WRKDIR}/fk-rgain-8df1a846a12c
REVISION=	2

CATEGORIES=	audio

HOMEPAGE=	https://bitbucket.org/fk/rgain

# GPLv2+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

# pypi version has no test data, and is weirdly named anyway
MASTER_SITES=	https://bitbucket.org/fk/rgain/get/
DISTFILES=	${DISTNAME}{${MODPY_EGG_VERSION}}.tar.bz2

BUILD_DEPENDS=	textproc/py-docutils
RUN_DEPENDS=	audio/py-mutagen \
		devel/py-gobject3 \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-libav \
		multimedia/gstreamer1/plugins-base \
		multimedia/gstreamer1/plugins-good
TEST_DEPENDS=	${BASE_PKGPATH} \
		devel/py-test

do-test:
	cd ${WRKSRC}; PYTHONPATH='.' py.test -v

.include <bsd.port.mk>
