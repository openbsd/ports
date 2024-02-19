COMMENT=	bitmapped programming font, based on Tamsyn

V=		1.11.6
GH_ACCOUNT=	sunaku
GH_PROJECT=	tamzen-font
GH_TAGNAME=	Tamzen-$V
DISTNAME=	tamzen-font-$V
CATEGORIES=	fonts x11

HOMEPAGE=	https://github.com/sunaku/tamzen-font

# see LICENSE - free permission to use, copy, modify, distribute
PERMIT_PACKAGE=	Yes

FONTDIR=	${PREFIX}/share/fonts/tamzen
DOCDIR=		${PREFIX}/share/doc/tamzen

NO_TEST=	Yes
PKG_ARCH=	*

do-build:
	${GZIP_CMD} -k ${WRKSRC}/pcf/*.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/pcf/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/otb/*.otb ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} ${DOCDIR}
	${X11BASE}/bin/mkfontdir ${FONTDIR}
	fgrep '.pcf.gz' ${FONTDIR}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${FONTDIR}/fonts.alias-tamzen

.include <bsd.port.mk>
