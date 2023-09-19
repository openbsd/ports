COMMENT=		browser for a large lexical database of English

DISTNAME=		WordNet-3.0
DISTFILES.dict=		wn3.1.dict.tar.gz
PKGNAME=		wordnet-3.1
REVISION=		3

CATEGORIES=		misc

HOMEPAGE=		https://wordnet.princeton.edu/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig
WANTLIB += freetype m xcb z ${MODTK_WANTLIB}

SITES=		https://wordnetcode.princeton.edu/3.0/
SITES.dict=	https://wordnetcode.princeton.edu/

MODULES=	x11/tk

RUN_DEPENDS +=	devel/desktop-file-utils
LIB_DEPENDS +=	${MODTK_LIB_DEPENDS}

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=	--prefix='${PREFIX}/share/wordnet' \
		--exec-prefix='${PREFIX}' \
		--sysconfdir='${SYSCONFDIR}' \
		--mandir='${PREFIX}/man' \
		--includedir='${PREFIX}/include' \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR}

CFLAGS+=	-I${MODTK_INCDIR} -I${MODTCL_INCDIR}

CONFIGURE_ENV+=	CFLAGS="${CFLAGS}"

NO_TEST=	Yes

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
