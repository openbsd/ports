COMMENT=		data files for the Celestia space simulator

GH_ACCOUNT=		CelestiaProject
GH_PROJECT=		CelestiaContent
GH_COMMIT=		d46e616518f4b39e8c7e97f644180018447073c6

DISTNAME=		celestia-data-0.20260325

CATEGORIES=		astro

HOMEPAGE=		https://celestiaproject.space/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/cmake

BUILD_DEPENDS=		devel/gettext,-tools \
			graphics/ImageMagick

# -- workaround starts -- -- --
# copy pre-generated file so that we avoid
# https://github.com/ImageMagick/ImageMagick6/issues/427
SITES.workaround=	https://spacehopper.org/mirrors/
DISTFILES.workaround=	celestia-data-rocky_lores.jpg \
			celestia-data-rocky_medres.jpg
EXTRACT_ONLY=		${DISTNAME}-${GH_COMMIT:C/(........).*/\1/}.tar.gz

post-build:
.for i in lores medres
	cp ${FULLDISTDIR}/celestia-data-rocky_$i.jpg \
		${WRKBUILD}/textures/hires/$i_rocky.jpg
.endfor
#-- workaround ends -- -- --

.include <bsd.port.mk>
