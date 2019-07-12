# $OpenBSD: Makefile,v 1.11 2019/07/12 20:46:13 sthen Exp $

COMMENT=		ink-saving font based on Vera Sans

TYPEFACE =		ecofont
# Make sure we're well below upstreams initial versioned release
V=			0.001
DISTNAME=		spranq_eco_sans_regular-$V
PKGNAME=		spranq-ecofont-ttf-$V
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		http://www.ecofont.eu/ecofont_en.html

# Vera Sans license
# http://www.bitstream.com/font_rendering/products/dev_fonts/vera.html
PERMIT_PACKAGE=	Yes

# Untill upstream starts to version the font
MASTER_SITES=		https://distfiles.nl/

MODULES =		font

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}

.include <bsd.port.mk>
