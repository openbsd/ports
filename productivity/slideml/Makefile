# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:59 sthen Exp $

COMMENT =		HTML slide generator based on SlideML

V =			1.1.0
REVISION =		1
GH_TAGNAME =		SLIDEML_${V:S/./_/g}
GH_ACCOUNT =		conformal
GH_PROJECT =		slideml
DISTNAME =		${GH_PROJECT}-${V}
CATEGORIES =		productivity

HOMEPAGE =		https://github.com/conformal/slideml/wiki

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

#W3C Software Notice and License & BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		graphics/p5-Image-Size 

NO_BUILD =		Yes
NO_TEST =		Yes

DATA_DIR =		${PREFIX}/share/slideml
DOC_DIR =		${PREFIX}/share/doc/slideml
EG_DIR =		${PREFIX}/share/examples/slideml


pre-configure:
	${SUBST_CMD} ${WRKSRC}/slideml.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/slideml.pl ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/slideml_spec.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/license ${DOC_DIR}
	${INSTALL_DATA_DIR} ${DATA_DIR}
	${INSTALL_DATA} ${WRKSRC}/slidy.{css,js} ${DATA_DIR}
	${INSTALL_DATA_DIR} ${EG_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/slides.sml ${EG_DIR}

.include <bsd.port.mk>
