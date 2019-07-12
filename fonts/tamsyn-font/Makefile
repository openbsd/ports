# $OpenBSD$

COMMENT=	monospaced bitmap font for programming

DISTNAME=	tamsyn-font-1.11

CATEGORIES=	fonts
HOMEPAGE=	http://www.fial.com/~scott/tamsyn-font/
MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Custom
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.fial.com/~scott/tamsyn-font/download/

FONTDIR=	${PREFIX}/share/fonts/tamsyn
DOCDIR=		${PREFIX}/share/doc/tamsyn

NO_TEST=	Yes
PKG_ARCH=	*

do-build:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	fgrep '.pcf.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//' > ${WRKSRC}/fonts.alias

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${FONTDIR}/fonts.alias-tamsyn
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README} ${DOCDIR}

.include <bsd.port.mk>
