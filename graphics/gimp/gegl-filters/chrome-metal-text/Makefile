COMMENT =	GEGL chrome metal effect on text
DISTNAME =	gegl-chrome-metal-text-0.0

GH_PROJECT =	GEGL---Chrome-Metal-Text-Styling-Filter
GH_COMMIT =	6e56a7514dc0d2740ca563a7f3b9f55009482d59

WRKSRC =	${WRKDIST}/compile_chrome_here
PLUGIN =	geglchrome.so

RUN_DEPENDS +=	graphics/gimp/gegl-filters/bevel \
		graphics/gimp/gegl-filters/smooth-edges \
		graphics/gimp/gegl-filters/metal

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/gegl_chrome_guide.pdf ${DOCDIR}

.include <bsd.port.mk>
