# $OpenBSD: Makefile,v 1.13 2016/04/09 11:42:09 sthen Exp $

COMMENT=		browser for a large lexical database of English

V=			3.0
DISTNAME=		WordNet-$V
PKGNAME=		wordnet-$V
REVISION=		6

CATEGORIES=		misc

HOMEPAGE=		http://wordnet.princeton.edu/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig
WANTLIB += freetype m pthread-stubs xcb z ${MODTK_WANTLIB}

MASTER_SITES=		http://wordnet.princeton.edu/3.0/

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

.include <bsd.port.mk>
