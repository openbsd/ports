# $OpenBSD: font.port.mk,v 1.9 2024/07/11 12:54:41 bentley Exp $

CATEGORIES +=	fonts

PKG_ARCH ?=	*

EXTRACT_SUFX ?=	.zip

.if defined(MODFONT_FAMILY)
.  if defined(MODFONT_VERSION)
PKGNAME ?=	${MODFONT_FAMILY}-${MODFONT_VERSION}
.  endif

MODFONT_FONTDIR ?=	${PREFIX}/share/fonts/${MODFONT_FAMILY}
MODFONT_DOCDIR ?=	${PREFIX}/share/doc/${MODFONT_FAMILY}

MODFONT_FONTFILES ?=
MODFONT_DOCFILES ?=

MODFONT_do-install = ${INSTALL_DATA_DIR} ${MODFONT_FONTDIR};

# if MODFONT_FONTFILES is not set, install .otf files if present (and break,
# to skip ttf) otherwise fallback to ttf.
.if empty(MODFONT_FONTFILES)
MODFONT_do-install += for t in otf ttf; do ${INSTALL_DATA} ${WRKSRC}/*.$$t ${MODFONT_FONTDIR} && break; done
.else
MODFONT_do-install += for t in ${MODFONT_FONTFILES}; do ${INSTALL_DATA} ${WRKSRC}/$$t ${MODFONT_FONTDIR}; done
.endif

.if !empty(MODFONT_DOCFILES)
MODFONT_do-install += ; ${INSTALL_DATA_DIR} ${MODFONT_DOCDIR}
MODFONT_do-install += ; for t in ${MODFONT_DOCFILES}; do ${INSTALL_DATA} ${WRKSRC}/$$t ${MODFONT_DOCDIR}; done
.endif

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
