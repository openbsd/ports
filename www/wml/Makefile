# $OpenBSD: Makefile,v 1.18 2014/03/21 13:10:54 sthen Exp $

COMMENT=		Website META Language: off-line HTML generation toolkit

DISTNAME=		wml-2.0.11
REVISION=		7
CATEGORIES=		www

HOMEPAGE=		http://www.thewml.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/distrib/

WANTLIB=		c m ncurses perl util
MODULES=		devel/gettext

RUN_DEPENDS=		devel/p5-Term-ReadKey \
			graphics/p5-GD \
			graphics/p5-Image-Size \
			math/p5-Bit-Vector \
			www/p5-HTML-Clean \
			www/tidyp>=1.04p1
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-openworld
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV=		EXT_TIDY=${LOCALBASE}/bin/tidy \
			EXT_HTMLCLEAN=${LOCALBASE}/bin/htmlclean

post-extract:
	rm ${WRKSRC}/wml_aux/tidy/*.orig

.include <bsd.port.mk>
