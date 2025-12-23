COMMENT=		Genealogical Research Analysis Management Programming System

MODPY_DISTV =		6.0.6
DISTNAME=		gramps-${MODPY_DISTV}

CATEGORIES=		misc x11

HOMEPAGE=		https://gramps-project.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

SITES=			${SITE_SOURCEFORGE:=gramps/}

MODULES=		lang/python \
			textproc/intltool

MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-country \
			devel/py-gobject3 \
			fonts/freefont-ttf \
			geo/geocode-glib \
			geo/osm-gps-map \
			graphics/libgexiv2 \
			graphics/py-Pillow \
			graphics/py-cairo \
			graphics/py-imagesize \
			math/graphviz \
			misc/shared-mime-info \
			textproc/gspell \
			textproc/py-ICU \
			textproc/py-orjson \
			x11/gtk+3 \
			x11/gtk+4,-guic

NO_TEST=		Yes

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py

post-install:
	echo -n '${TRUEPREFIX}/share' \
		>${WRKINST}/${MODPY_SITEPKG}/gramps/gen/utils/resource-path
	gunzip ${PREFIX}/man/*/{,*}/*.gz

.include <bsd.port.mk>
