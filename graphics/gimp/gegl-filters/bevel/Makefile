COMMENT =	GEGL simple text bevel effect
PKGNAME =	gegl-simple-bevel-0.0
DISTNAME = 	gegl-effects-0.0

GH_PROJECT =	GEGL-Effects---Layer-Effects-in-Gimp-using-GEGL
GH_COMMIT =	33d9c3f908eadf5ba12999d14e0f970480d873e9

WRKSRC =	${WRKDIST}/GEGL_EFFECTS/compile_bevel_here
PLUGIN =	bevel.so

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/bevel_guide.pdf ${DOCDIR}

.include <bsd.port.mk>
