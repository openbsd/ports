# $OpenBSD: Makefile,v 1.16 2003/11/19 16:42:33 lebel Exp $

COMMENT=		"spell checker designed to eventually replace Ispell"
COMMENT-br=		"aspell dictionary for Breton"
COMMENT-ca=		"aspell dictionary for Catalan"
COMMENT-cs=		"aspell dictionary for Czech"
COMMENT-cy=		"aspell dictionary for Welsh"
COMMENT-da=		"aspell dictionary for Danish"
COMMENT-de=		"aspell dictionary for German"
COMMENT-el=		"aspell dictionary for Greek"
COMMENT-eo=		"aspell dictionary for Esperanto"
COMMENT-es=		"aspell dictionary for Spanish"
COMMENT-fo=		"aspell dictionary for Faroese"
COMMENT-fr=		"aspell dictionary for French"
COMMENT-it=		"aspell dictionary for Italian"
COMMENT-nl=		"aspell dictionary for Dutch"
COMMENT-no=		"aspell dictionary for Norwegian"
COMMENT-pl=		"aspell dictionary for Polish"
COMMENT-pt=		"aspell dictionary for Portuguese"
COMMENT-ro=		"aspell dictionary for Romanian"
COMMENT-ru=		"aspell dictionary for Russian"
COMMENT-sk=		"aspell dictionary for Slovak"
COMMENT-sv=		"aspell dictionary for Swedish"
COMMENT-uk=		"aspell dictionary for Ukrainian"

VERSION=		0.50.3
DISTNAME=		aspell-${VERSION}
DIST_SUBDIR=		aspell
CATEGORIES=		textproc
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

HOMEPAGE=		http://aspell.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" 

DICTS=		br-0.50-2 ca-0.50-2 cs-0.50-2 cy-0.50-3 da-0.50-2 de-0.50-2 \
		el-0.50-3 en-0.51-0 eo-0.50-2 es-0.50-2 fo-0.50-2 fr-0.50-2 \
		fr-0.50-3 it-0.50-2 nl-0.50-2 no-0.50-2 pl-0.50-2 pt-0.50-2 \
		ro-0.50-2 ru-0.50-2 sk-0.50-2 sv-0.50-2 uk-0.50-3

.for i in ${DICTS}
DISTFILES+=		aspell-$i.tar.bz2
.endfor

MULTI_PACKAGES=	-br -ca -cs -cy -da -de -el -eo -es -fo -fr \
		-it -nl -no -pl -pt -ro -ru -sk -sv -uk

.for i in ${MULTI_PACKAGES}
PKGNAME$i=	aspell$i-${VERSION}
.endfor

SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		::textproc/aspell
.endif

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
