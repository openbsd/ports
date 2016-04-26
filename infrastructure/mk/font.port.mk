# $OpenBSD: font.port.mk,v 1.1 2016/04/26 11:33:03 jasper Exp $

CATEGORIES +=	fonts

PKG_ARCH ?=	*

EXTRACT_SUFX ?=	.zip

.if defined(TYPEFACE)
.  if defined(V)
PKGNAME ?=	${TYPEFACE}-$V
.  elif defined(VERSION)
PKGNAME ?=	${TYPEFACE}-${VERSION}
.  endif

FONTDIR ?=	${PREFIX}/share/fonts/${TYPEFACE}

FONTTYPES ?=	ttf

MODFONT_do-install = ${INSTALL_DATA_DIR} ${FONTDIR}; \
	for t in ${FONTTYPES}; do ${INSTALL_DATA} ${WRKSRC}/${FONT_DISTDIR}/*.$$t ${FONTDIR}; done

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
