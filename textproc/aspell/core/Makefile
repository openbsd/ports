# $OpenBSD: Makefile,v 1.3 2004/02/18 01:27:08 jolan Exp $

COMMENT=	"spell checker designed to eventually replace Ispell"
VER=		0.50.4.1
DISTNAME=	aspell-${VER}
DIST_SUBDIR=	aspell
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=aspell/}
MASTER_SITES0=	${MASTER_SITE_GNU:=aspell/dict/en/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} aspell-en-0.51-0.tar.bz2:0

HOMEPAGE=	http://aspell.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gcc3
MODGCC3_ARCHES=	powerpc sparc64
MODGCC3_LANGS=	C++

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" 

DICTS=	en-0.51-0

post-build:
.for i in ${DICTS}
	${ECHO_MSG} "===>  Building for aspell-$i"; \
	cd ${WRKDIR}/aspell-$i; \
	ASPELL=${WRKSRC}/prog/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/prog/word-list-compress \
	  ./configure; \
	for i in ${WRKSRC}/data/*.dat; do ln -sf $$i; done; \
	ASPELL=${WRKSRC}/src/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/src/word-list-compress \
	  ${MAKE} ${MAKE_FLAGS}
.endfor

post-install:
.for i in ${DICTS}
	${ECHO_MSG} "===>  Faking installation for aspell-$i"; \
	cd ${WRKDIR}/aspell-$i; \
 	ASPELL=${WRKSRC}/prog/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/prog/word-list-compress \
	  ${MAKE} ${FAKE_FLAGS} install
.endfor

.include <bsd.port.mk>
