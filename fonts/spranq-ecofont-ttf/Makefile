# $OpenBSD: Makefile,v 1.5 2015/09/25 12:50:08 sthen Exp $

PKG_ARCH=		*

COMMENT=		ink-saving font based on Vera Sans

# Make sure we're well below upstreams initial versioned release
V=			0.001
DISTNAME=		spranq_eco_sans_regular-$V
PKGNAME=		spranq-ecofont-ttf-$V
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		http://www.ecofont.eu/ecofont_en.html

# Vera Sans license
# http://www.bitstream.com/font_rendering/products/dev_fonts/vera.html
PERMIT_PACKAGE_CDROM=	Yes

# Untill upstream starts to version the font
MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.zip

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST=		${WRKDIR}/
FONTSDIR=		${PREFIX}/share/fonts/ecofont

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>
