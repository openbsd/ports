# $OpenBSD: Makefile,v 1.2 2008/09/01 20:02:53 sthen Exp $
COMMENT=		browser for a large lexical database of English

V=			3.0
DISTNAME=		WordNet-$V
PKGNAME=		wordnet-$Vp0

CATEGORIES=		misc

HOMEPAGE=		http://wordnet.princeton.edu/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += X11 c m Xext Xss

MASTER_SITES=		http://wordnet.princeton.edu/3.0/

LIB_DEPENDS+=		tcl85:tcl-8.5.*:lang/tcl/8.5 \
			tk85:tk-8.5.*:x11/tk/8.5

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
			--with-tcl=${LOCALBASE}/lib/tcl8.5 \
			--with-tk=${LOCALBASE}/lib/tk8.5

CFLAGS+=		-I${LOCALBASE}/include/tcl8.5 \
			-I${LOCALBASE}/include/tk8.5

CONFIGURE_ENV+=		CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
