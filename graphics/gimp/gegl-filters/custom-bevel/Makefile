COMMENT =	GEGL custom text bevel effect
DISTNAME =	gegl-custom-bevel-0.0

GH_PROJECT =	GEGL-Custom-Bevel
GH_COMMIT =	db4607dfe28cf294d7f3cb743e8ab814d81bfc64

BUILD_DEPENDS =	archivers/unzip

PLUGIN = 	cbevel.so

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	cd ${DOCDIR} && unzip -x ${WRKDIST}/Custom_Bevel_guide_with_presets_to_import.zip
	mv ${DOCDIR}/Custom_Bevel_guide/* ${DOCDIR}
	rmdir ${DOCDIR}/Custom_Bevel_guide

.include <bsd.port.mk>
