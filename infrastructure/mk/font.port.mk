# $OpenBSD: font.port.mk,v 1.6 2023/09/14 03:51:43 bentley Exp $

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

MODFONT_do-install = ${INSTALL_DATA_DIR} ${FONTDIR};

# if FONTTYPES is not set, install .otf files if present (and break,
# to skip ttf) otherwise fallback to ttf.
.if empty(FONTTYPES)
MODFONT_do-install += for t in otf ttf; do ${INSTALL_DATA} ${WRKSRC}/*.$$t ${FONTDIR} && break; done
.else
MODFONT_do-install += for t in ${FONTTYPES}; do ${INSTALL_DATA} ${WRKSRC}/*.$$t ${FONTDIR}; done
.endif

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
