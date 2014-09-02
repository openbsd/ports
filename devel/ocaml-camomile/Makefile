# $OpenBSD: Makefile,v 1.7 2014/09/02 09:24:44 chrisz Exp $

COMMENT =	unicode library for objective caml

CATEGORIES =	devel

V =		0.8.5
GH_ACCOUNT =	yoriyuki
GH_PROJECT =	Camomile
GH_TAGNAME =	rel-${V}
GH_COMMIT =	07415d3049eaad11914523468904ee117db149e3
DISTNAME =	camomile-${V}
WRKSRC =	${WRKDIST}/Camomile
PKGNAME =	ocaml-${DISTNAME}

HOMEPAGE =	https://github.com/yoriyuki/Camomile

MAINTAINER =	Christopher Zimmermann <chrisz@openbsd.org>

# LGPL >= 2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib lang/ocaml-camlp4

CONFIGURE_STYLE =	gnu dest autoconf no-autoheader
AUTOCONF_VERSION =	2.69

NO_TEST =	Yes
USE_GMAKE =	Yes

# don't want to port cppo - use cpp as cppo substitute
CONFIGURE_ENV =	CPPO="cpp -P"

ALL_TARGET =	all dochtml

post-extract:
	touch ${WRKSRC}/.depend
	# for cpp remove indentation before preprocessor directives.
	echo '1;$$s/^ *#/#/\nwq' |ed -s ${WRKSRC}/camomileLibrary.mlp
	echo '1;$$s/^ *#/#/\nwq' |ed -s ${WRKSRC}/camomileLibrary.mlip

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/camomile/html/
	${INSTALL_DATA} ${WRKSRC}/Changes ${PREFIX}/share/doc/camomile/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/camomile/
	${INSTALL_DATA} ${WRKSRC}/dochtml/* \
		${PREFIX}/share/doc/camomile/html/

.include <bsd.port.mk>
