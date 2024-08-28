COMMENT=		documentation tool micro-framework

MODPY_EGG_VERSION=	0.17.1
DISTNAME=		hotdoc-${MODPY_EGG_VERSION}

CATEGORIES=		textproc

HOMEPAGE=		https://hotdoc.github.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 xml2

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

BUILD_DEPENDS=		devel/cmake

LIB_DEPENDS=		devel/json-glib \
			textproc/libxml

RUN_DEPENDS=		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-dbus-deviation${MODPY_FLAVOR} \
			devel/py-decorator${MODPY_FLAVOR} \
			devel/py-pkgconfig${MODPY_FLAVOR} \
			devel/py-schema${MODPY_FLAVOR} \
			devel/py-toposort${MODPY_FLAVOR} \
			devel/py-wheezy.template${MODPY_FLAVOR} \
			math/py-networkx${MODPY_FLAVOR}>=2.6.2 \
			textproc/py-cchardet${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

# XXX only include what we need from backports (unported)
SITES.pybackports=	https://files.pythonhosted.org/packages/fc/25/dae014b114397a6f60578d7358bf5fcb103f71556e5363a50d7b42e9bc51/
DISTFILES.pybackports=	backports.entry_points_selectable-1.3.0.tar.gz
post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}
	cp -a ${WRKDIR}/backports.entry_points_selectable-1.3.0/backports/ \
		${WRKINST}/${MODPY_SITEPKG}
	${MODPY_COMPILEALL} ${WRKINST}/${MODPY_SITEPKG}/backports/

# LGPLv2.1+
.include <bsd.port.mk>
