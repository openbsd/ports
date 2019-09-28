# $OpenBSD: Makefile,v 1.8 2019/09/28 19:33:32 sthen Exp $

PKG_ARCH=	*

COMMENT=	patched fonts with symbols for powerline/airline

GH_ACCOUNT=	powerline
GH_PROJECT=	fonts
GH_COMMIT=	e80e3eba9091dac0655a0a77472e10f53e754bb0
DISTNAME=	powerline-fonts-0.20181111

CATEGORIES=	fonts

HOMEPAGE=	https://powerline.readthedocs.org/en/latest/

# see wrksrc/README.rst - SIL OFL, Apache 2.0, Ubuntu/DejaVu Font Licenses
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

FONTS_DIR=	${PREFIX}/share/fonts/powerline

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR} ${DOCS_DIR}
	cd ${WRKDIR}/fonts-${GH_COMMIT}; pax -rw [A-Z]* ${FONTS_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${FONTS_DIR}
	mv ${FONTS_DIR}/Terminus/PCF/* ${FONTS_DIR}/Terminus
	rm -rf ${FONTS_DIR}/Terminus/{BDF,PSF}
	rmdir ${FONTS_DIR}/Terminus/PCF
	rm -f ${FONTS_DIR}/*/fonts.dir ${FONTS_DIR}/*/fonts.scale

.include <bsd.port.mk>
