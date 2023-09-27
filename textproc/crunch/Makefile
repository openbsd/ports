COMMENT =	wordlist generator

DISTNAME =	crunch-3.6
EXTRACT_SUFX =	.tgz

CATEGORIES =	textproc

HOMEPAGE =	https://sourceforge.net/projects/crunch-wordlist/
MAINTAINER =	Renaud Allard <renaud@allard.it>

# GPLv2 only
PERMIT_PACKAGE = Yes

WANTLIB += c m pthread

SITES =		${SITE_SOURCEFORGE:=crunch-wordlist/}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" LFS=
FAKE_FLAGS =	PREFIX=${TRUEPREFIX}

NO_TEST =	Yes

pre-patch:
	sed -Ei 's/^(\\"|$$)/.\\"/' ${WRKSRC}/crunch.1

# upstream's target uses sudo
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/crunch
	${INSTALL_PROGRAM} ${WRKBUILD}/crunch ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/charset.lst ${PREFIX}/share/crunch
	${INSTALL_MAN} ${WRKSRC}/crunch.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
