COMMENT =	CNS 11643-compliant Taiwanese government fonts

# fonts extracted from https://www.cns11643.gov.tw/AIDB/Open_Data.zip
# version number taken from 'otfinfo --info *.ttf'
MODFONT_FAMILY =	taiwan-cns11643-fonts
MODFONT_VERSION =	103.1
REVISION =		0

DISTNAME =	${MODFONT_FAMILY}-${MODFONT_VERSION}

HOMEPAGE =	https://data.gov.tw/dataset/5961

CATEGORIES =	fonts chinese x11

# https://data.gov.tw/license
# May be used in compliance with CC-BY-4.0 International
PERMIT_PACKAGE =	Yes

SITES =		https://distfiles.roadrunner.page/

EXTRACT_SUFX =	.tar.gz

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

MODFONT_DOCFILES =	README COPYING

.include <bsd.port.mk>
