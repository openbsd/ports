COMMENT =	GEGL layer effects
DISTNAME =	gegl-effects-0.0

GH_PROJECT =	GEGL-Effects---Layer-Effects-in-Gimp-using-GEGL
GH_COMMIT =	33d9c3f908eadf5ba12999d14e0f970480d873e9

PLUGIN = 	gegleffects.so
WRKSRC =	${WRKDIST}/GEGL_EFFECTS
RUN_DEPENDS +=	graphics/gimp/gegl-filters/bevel \
		graphics/gimp/gegl-filters/inner-glow

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/GEGL_effects_guide.pdf ${DOCDIR}

.include <bsd.port.mk>
