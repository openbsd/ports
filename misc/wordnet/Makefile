COMMENT=		browser for a large lexical database of English

DISTNAME=		WordNet-3.0
DISTFILES=		${DISTNAME}${EXTRACT_SUFX} wn3.1.dict.tar.gz:0
PKGNAME=		wordnet-3.1
REVISION=		2

CATEGORIES=		misc

HOMEPAGE=		http://wordnet.princeton.edu/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig
WANTLIB += freetype m xcb z ${MODTK_WANTLIB}

MASTER_SITES=		http://wordnetcode.princeton.edu/3.0/
MASTER_SITES0=		http://wordnetcode.princeton.edu/

MODULES=		x11/tk

RUN_DEPENDS +=		devel/desktop-file-utils
LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		--prefix='${PREFIX}/share/wordnet' \
			--exec-prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--mandir='${PREFIX}/man' \
			--includedir='${PREFIX}/include' \
			--with-tcl=${MODTCL_LIBDIR} \
			--with-tk=${MODTK_LIBDIR}

CFLAGS+=		-I${MODTK_INCDIR} -I${MODTCL_INCDIR}

CONFIGURE_ENV+=		CFLAGS="${CFLAGS}"

NO_TEST=		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/include/wn.h ${WRKSRC}/src/wnb
	@perl -pi -e 's,/usr/local/WordNet-3.0,${PREFIX}/share/wordnet,; \
		s,([0-9])WN,$$1,g' \${WRKSRC}/doc/man/*.[1-9]

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${SUBST_DATA} ${FILESDIR}/wordnet.desktop \
		${PREFIX}/share/applications/wordnet.desktop
	rm ${PREFIX}/share/wordnet/dict/*
	${INSTALL_DATA} ${WRKDIR}/dict/*.* ${PREFIX}/share/wordnet/dict/

.include <bsd.port.mk>
