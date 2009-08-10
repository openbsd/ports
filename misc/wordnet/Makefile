# $OpenBSD: Makefile,v 1.7 2009/08/10 06:33:02 kili Exp $
COMMENT=		browser for a large lexical database of English

V=			3.0
DISTNAME=		WordNet-$V
PKGNAME=		wordnet-$Vp4

CATEGORIES=		misc

HOMEPAGE=		http://wordnet.princeton.edu/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss c expat fontconfig
WANTLIB += freetype m pthread-stubs xcb z

MASTER_SITES=		http://wordnet.princeton.edu/3.0/

MODULES=		x11/tk

LIB_DEPENDS+=		${MODTK_LIB_DEPENDS}

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/include/wn.h ${WRKSRC}/src/wnb
	@perl -pi -e 's,/usr/local/WordNet-3.0,${PREFIX}/share/wordnet,; \
		s,([0-9])WN,$$1,g' \${WRKSRC}/doc/man/*.[1-9]

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

NO_REGRESS=		Yes

.include <bsd.port.mk>
