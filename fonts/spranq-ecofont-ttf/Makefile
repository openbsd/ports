COMMENT=		ink-saving font based on Vera Sans

MODFONT_FAMILY =	ecofont
# Make sure we're well below upstreams initial versioned release
MODFONT_VERSION =	0.001
DISTNAME=		spranq_eco_sans_regular-${MODFONT_VERSION}
PKGNAME=		spranq-ecofont-ttf-${MODFONT_VERSION}
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		http://www.ecofont.eu/ecofont_en.html

# Vera Sans license
# http://www.bitstream.com/font_rendering/products/dev_fonts/vera.html
PERMIT_PACKAGE=	Yes

# Until upstream starts to version the font
SITES=			https://distfiles.sigtrap.nl/

MODULES =		font

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}

.include <bsd.port.mk>
