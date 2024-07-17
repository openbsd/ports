COMMENT=	full suite pictographic icons

V =		6.6.0
PKGNAME =	font-awesome-${V}
DISTNAME =	fontawesome-free-${V}-desktop

MODFONT_FAMILY =	font-awesome

CATEGORIES=	fonts

HOMEPAGE =	https://fontawesome.com

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =	https://github.com/FortAwesome/Font-Awesome/releases/download/${V}/
EXTRACT_SUFX =	.zip

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

MODFONT_FONTFILES =	otfs/*.otf
MODFONT_DOCFILES =	*.txt

.include <bsd.port.mk>
