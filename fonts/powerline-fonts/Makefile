# $OpenBSD: Makefile,v 1.1.1.1 2014/07/15 02:03:48 sthen Exp $

COMMENT=	patched fonts with symbols for powerline/airline

V=		0.20140429
DISTNAME=	powerline-fonts-$V

CATEGORIES=	fonts

HOMEPAGE=	https://powerline.readthedocs.org/en/latest/

# see wrksrc/README.rst - SIL OFL, Apache 2.0, Ubuntu/DejaVu Font Licenses
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	Lokaltog
GH_PROJECT=	powerline-fonts
GH_COMMIT=	99be8480bb39f2b9daa52f03a22941a45cd1b8cf

NO_BUILD=	Yes
NO_TEST=	Yes

FONTS_DIR=	${PREFIX}/lib/X11/fonts/powerline

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR} ${DOCS_DIR}
	cd ${WRKSRC}; pax -rw * ${FONTS_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${FONTS_DIR}
	mv ${FONTS_DIR}/Terminus/PCF/* ${FONTS_DIR}/Terminus
	rm -rf ${FONTS_DIR}/Terminus/{BDF,PSF}
	rmdir ${FONTS_DIR}/Terminus/PCF
	rm -f ${FONTS_DIR}/*/fonts.dir ${FONTS_DIR}/*/fonts.scale

.include <bsd.port.mk>
