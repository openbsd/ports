# $OpenBSD: font.port.mk,v 1.7 2024/04/15 16:08:14 bentley Exp $

CATEGORIES +=	fonts

PKG_ARCH ?=	*

EXTRACT_SUFX ?=	.zip

.if defined(MODFONT_FAMILY)
.  if defined(MODFONT_VERSION)
PKGNAME ?=	${MODFONT_FAMILY}-${MODFONT_VERSION}
.  endif

MODFONT_DIR ?=	${PREFIX}/share/fonts/${MODFONT_FAMILY}

MODFONT_TYPES ?=

MODFONT_do-install = ${INSTALL_DATA_DIR} ${MODFONT_DIR};

# if MODFONT_TYPES is not set, install .otf files if present (and break,
# to skip ttf) otherwise fallback to ttf.
.if empty(MODFONT_TYPES)
MODFONT_do-install += for t in otf ttf; do ${INSTALL_DATA} ${WRKSRC}/*.$$t ${MODFONT_DIR} && break; done
.else
MODFONT_do-install += for t in ${MODFONT_TYPES}; do ${INSTALL_DATA} ${WRKSRC}/*.$$t ${MODFONT_DIR}; done
.endif

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
