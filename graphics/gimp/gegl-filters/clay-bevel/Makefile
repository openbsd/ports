COMMENT =	GEGL clay bevel effect
DISTNAME =	gegl-clay-bevel-0.0

GH_PROJECT =	GEGL-Clay-Bevel
GH_COMMIT =	db9d88368a45098812b274e12593f18aef116b6e

PLUGIN =	clay.so

WRKSRC =	${WRKDIST}/clay_bevel/gegl_clay_bevel

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/clay_bevel_guide.txt ${DOCDIR}

.include <bsd.port.mk>
