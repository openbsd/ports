# $OpenBSD: Makefile,v 1.6 2002/04/09 19:23:54 lebel Exp $

COMMENT=		"spell checker designed to eventually replace Ispell"
COMMENT-danish=		"aspell dictionary for Danish"
COMMENT-dutch=		"aspell dictionary for Dutch"
COMMENT-french=		"aspell dictionary for French"
COMMENT-swedish=	"aspell dictionary for Swedish"

V=			0
SV=			.33.7
PKGNAME=		aspell-${V}${SV}
DISTNAME=		aspell-${SV}
CATEGORIES=		textproc
NEED_VERSION=		1.402
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://aspell.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	aspell

# francais dictionary
FRENCH_DIST=		aspell-dict-francais-0.05
MASTER_SITES0=		http://dept-info.labri.u-bordeaux.fr/~vanicat/aspell/
DISTFILES+=		${FRENCH_DIST}.tar.gz:0

# swedish dictionary
SWEDISH_DIST=		aspell-swedish-0.2
MASTER_SITES1=		http://www.dtek.chalmers.se/~d95mback/aspell/
DISTFILES+=		${SWEDISH_DIST}.tar.gz:1

# dutch dictionary
DUTCH_DIST=		nl-aspell-0.1
MASTER_SITES2=http://tinf2.vub.ac.be/~dvermeir/software/dv/nl-aspell/download/
DISTFILES+=		${DUTCH_DIST}.tar.gz:2

# danish dictionary
DANISH_DIST=		aspell-da-1.4.14
MASTER_SITES3=		http://da.speling.org/filer/
DISTFILES+=		${DANISH_DIST}.tar.gz:3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-doc-dir=${PREFIX}/share/doc/aspell

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" 

MULTI_PACKAGES=		-french -swedish -dutch -danish
.for i in ${MULTI_PACKAGES}
PKGNAME$i=      	aspell$i-${V}${SV}
.endfor

SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		::textproc/aspell
.else
LIB_DEPENDS=		pspell-modules.1::textproc/pspell
.endif

post-patch:
	@patch -s -d ${WRKDIR}/${FRENCH_DIST} \
		< ${FILESDIR}/patch-francais-Makefile

post-build:
# francais
	@echo "==> French dictionary"
	@cd ${WRKDIR}/${FRENCH_DIST}; ${MAKE_PROGRAM} WRKSRC=$(WRKSRC)
# swedish
	@echo "==> Swedish dictionary"
	@cp ${FILESDIR}/swedish-Makefile ${WRKDIR}/${SWEDISH_DIST}/Makefile
	@cd ${WRKDIR}/${SWEDISH_DIST}; ${MAKE_PROGRAM} WRKSRC=$(WRKSRC)
# dutch
	@echo "==> Dutch dictionary"
	@cp ${FILESDIR}/dutch-Makefile	\
		${WRKDIR}/${DUTCH_DIST}/nl-aspell/Makefile
	@cd ${WRKDIR}/${DUTCH_DIST}/nl-aspell; \
	  ${MAKE_PROGRAM} WRKSRC=$(WRKSRC)
# danish
	@echo "==> Danish dictionary"
	@cp ${FILESDIR}/danish-Makefile  ${WRKDIR}/${DANISH_DIST}/Makefile
	@cd ${WRKDIR}/${DANISH_DIST}; ${MAKE_PROGRAM} WRKSRC=$(WRKSRC)

post-install:
# francais
	@cd ${WRKDIR}/${FRENCH_DIST}; \
	  ${MAKE_PROGRAM} WRKSRC=$(WRKSRC) install
# swedish
	@cd ${WRKDIR}/${SWEDISH_DIST}; \
	  ${MAKE_PROGRAM} WRKSRC=$(WRKSRC) install
# dutch
	@cd ${WRKDIR}/${DUTCH_DIST}/nl-aspell; \
          ${MAKE_PROGRAM} WRKSRC=$(WRKSRC) install
# danish
	@cd ${WRKDIR}/${DANISH_DIST}; \
	  ${MAKE_PROGRAM} WRKSRC=$(WRKSRC) install

.include <bsd.port.mk>
