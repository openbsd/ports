# $OpenBSD: font.port.mk,v 1.3 2016/09/08 17:32:45 jasper Exp $

CATEGORIES +=	fonts

PKG_ARCH ?=	*

EXTRACT_SUFX ?=	.zip

.if defined(TYPEFACE)
.  if defined(V)
PKGNAME ?=	${TYPEFACE}-$V
.  elif defined(VERSION)
PKGNAME ?=	${TYPEFACE}-${VERSION}
.  endif

NO_TEST ?=	Yes

FONTDIR ?=	${PREFIX}/share/fonts/${TYPEFACE}

FONTTYPES ?=	ttf

FONT_DISTDIR ?=	${WRKSRC}

MODFONT_do-install = ${INSTALL_DATA_DIR} ${FONTDIR}; \
	for t in ${FONTTYPES}; do ${INSTALL_DATA} ${FONT_DISTDIR}/${FONT_DISTSUBDIR}/*.$$t ${FONTDIR}; done

.  if !target(do-install)
do-install:
	${MODFONT_do-install}
.  endif
.endif
