COMMENT=		Genealogical Research Analysis Management Programming System

MODPY_EGG_VERSION =	5.2.3
DISTNAME=		gramps-${MODPY_EGG_VERSION}

CATEGORIES=		misc x11

HOMEPAGE=		https://gramps-project.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=gramps/}

MODULES=		lang/python \
			textproc/intltool

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/xdg-utils \
			fonts/freefont-ttf \
			geo/osm-gps-map \
			graphics/libgexiv2 \
			graphics/py-Pillow${MODPY_FLAVOR} \
			math/graphviz \
			misc/shared-mime-info \
			textproc/gtkspell3 \
			textproc/py-ICU${MODPY_FLAVOR} \
			x11/gtk+4,-guic

NO_TEST=		Yes

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py

post-install:
	echo -n '${TRUEPREFIX}/share' \
		>${WRKINST}/${MODPY_SITEPKG}/gramps/gen/utils/resource-path
	gunzip ${PREFIX}/man/*/{,*}/*.gz

.include <bsd.port.mk>
