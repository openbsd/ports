# $OpenBSD: Makefile,v 1.12 2002/12/29 20:19:09 fgsch Exp $

COMMENT=		"spell checker designed to eventually replace Ispell"
COMMENT-br=		"aspell dictionary for Breton"
COMMENT-ca=		"aspell dictionary for Catalan"
COMMENT-da=		"aspell dictionary for Danish"
COMMENT-de=		"aspell dictionary for German"
COMMENT-eo=		"aspell dictionary for Esperanto"
COMMENT-es=		"aspell dictionary for Spanish"
COMMENT-fo=		"aspell dictionary for Faroese"
COMMENT-fr=		"aspell dictionary for French"
COMMENT-it=		"aspell dictionary for Italian"
COMMENT-nl=		"aspell dictionary for Dutch"
COMMENT-no=		"aspell dictionary for Norwegian"
COMMENT-pl=		"aspell dictionary for Polish"
COMMENT-pt=		"aspell dictionary for Portuguese"
COMMENT-ru=		"aspell dictionary for Russian"
COMMENT-sv=		"aspell dictionary for Swedish"

V=			0
SV=			.33.7
SP=			p1
PKGNAME=		aspell-${V}${SV}${SP}
DISTNAME=		aspell-${SV}
CATEGORIES=		textproc
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=		David Lebel <lebel@openbsd.org>

HOMEPAGE=		http://aspell.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=aspell/}
MASTER_SITES1=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-doc-dir=${PREFIX}/share/doc/aspell
USE_GMAKE=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" 

DICTS=			br-0.0-3 ca-0.0-3 da-0.1-3 de-0.1-3 eo-0.0-3 \
			es-0.0-3 fo-0.1-3 fr-0.1-3 it-0.0-3 nl-0.0-3 no-0.0-3 \
			pl-0.0-3 pt-0.0-3 ru-0.0-3 sv-0.0-3
.for i in ${DICTS}
DISTFILES+=	aspell-$i.tar.bz2:1
.endfor

MULTI_PACKAGES=		-br -ca -da -de -eo -es -fo -fr -it -nl -no -pl -pt \
		 	-ru -sv
.for i in ${MULTI_PACKAGES}
PKGNAME$i=      	aspell$i-${V}${SV}${SP}
.endfor

SUBPACKAGE?=

.if defined(PACKAGING) && !empty(SUBPACKAGE)
RUN_DEPENDS=		::textproc/aspell
.else
LIB_DEPENDS=		pspell-modules.1::textproc/pspell
.endif

post-build:
.for i in ${DICTS}
	cd ${WRKDIR}/aspell-$i; \
	ASPELL=${WRKSRC}/src/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/src/word-list-compress \
	  ./configure
	cd ${WRKDIR}/aspell-$i; \
	for i in ${WRKSRC}/data/*.dat; do ln -s $$i .; done; \
	ASPELL=${WRKSRC}/src/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/src/word-list-compress \
	  gmake ${MAKE_FLAGS}
.endfor

post-install:
.for i in ${DICTS}
	cd ${WRKDIR}/aspell-$i; \
 	ASPELL=${WRKSRC}/src/aspell \
	  WORD_LIST_COMPRESS=${WRKSRC}/src/word-list-compress \
	  gmake ${FAKE_FLAGS} install
.endfor

.include <bsd.port.mk>
