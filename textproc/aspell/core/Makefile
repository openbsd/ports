# $OpenBSD: Makefile,v 1.12 2005/12/30 10:13:00 steven Exp $

# memory fault at -O2/-O1 when building with gcc2. -O0 reveals some C++ issue
# with gcc2 (same as the powerpc issue which is why it uses the gcc module).
# gcc3 with has memory faults regardless of optimization level.
# gdb doesn't do anything useful.
NOT_FOR_ARCHS=	alpha

COMMENT=	"spell checker designed to eventually replace Ispell"
DISTNAME=	aspell-0.50.5
PKGNAME=	${DISTNAME}p3
SHARED_LIBS=	aspell	15.3 \
		pspell	15.3
DICT=		en-0.51-1
DIST_SUBDIR=	aspell
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU:=aspell/}
MASTER_SITES0=	${MASTER_SITE_GNU:=aspell/dict/en/}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} aspell-${DICT}.tar.bz2:0

HOMEPAGE=	http://aspell.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m stdc++ 

USE_LIBTOOL=Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --enable-static

post-build:
.for i in ${DICT}
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
.for i in ${DICT}
	${ECHO_MSG} "===>  Faking installation for aspell-$i"; \
	cd ${WRKDIR}/aspell-$i; \
 	ASPELL=${WRKSRC}/prog/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/prog/word-list-compress \
	  ${MAKE} ${FAKE_FLAGS} install
.endfor

.include <bsd.port.mk>
