# $OpenBSD: Makefile,v 1.14 2006/10/05 18:05:57 naddy Exp $

COMMENT=	"spell checker designed to eventually replace Ispell"
DISTNAME=	aspell-0.50.5
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	aspell	16.0 \
		pspell	16.0
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
