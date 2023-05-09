# $OpenBSD: font.port.mk,v 1.5 2023/05/09 13:32:04 sthen Exp $

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

FONTTYPES ?=

FONT_DISTDIR ?=	${WRKSRC}

MODFONT_do-install = ${INSTALL_DATA_DIR} ${FONTDIR};

# if FONTTYPES is not set, install .otf files if present (and break,
# to skip ttf) otherwise fallback to ttf.
.if empty(FONTTYPES)
MODFONT_do-install += for t in otf ttf; do ${INSTALL_DATA} ${FONT_DISTDIR}/${FONT_DISTSUBDIR}/*.$$t ${FONTDIR} && break; done
.else
MODFONT_do-install += for t in ${FONTTYPES}; do ${INSTALL_DATA} ${FONT_DISTDIR}/${FONT_DISTSUBDIR}/*.$$t ${FONTDIR}; done
.endif

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
