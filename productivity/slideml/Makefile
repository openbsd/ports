# $OpenBSD: Makefile,v 1.7 2014/03/25 21:20:39 espie Exp $

COMMENT =		HTML slide generator based on SlideML

DISTNAME =		slideml-1.1.0
REVISION =		0

CATEGORIES =		productivity

HOMEPAGE =		http://opensource.conformal.com/wiki/Slide_ML

MAINTAINER =		Laurent Fanis <laurent.fanis@gmail.com>

#W3C Software Notice and License & BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/slideml/
EXTRACT_SUFX =		.tgz

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
