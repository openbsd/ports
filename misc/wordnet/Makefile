# $OpenBSD: Makefile,v 1.1.1.1 2007/09/12 00:32:01 sthen Exp $
COMMENT=		browser for a large lexical database of English

V=			3.0
DISTNAME=		WordNet-$V
PKGNAME=		wordnet-$V

CATEGORIES=		misc

HOMEPAGE=		http://wordnet.princeton.edu/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB += X11 c m

MASTER_SITES=		http://wordnet.princeton.edu/3.0/

LIB_DEPENDS+=		tcl84:tcl-8.4.*:lang/tcl/8.4 \
			tk84:tk-8.4.*:x11/tk/8.4

post-patch:
	@perl -pi -e 's,%LOCALBASE%,${LOCALBASE},' ${WRKSRC}/{include/wn.h,src/wnb}
	@perl -pi -e 's,/usr/local/WordNet-3.0,${PREFIX}/share/wordnet,; \
		s,([0-9])WN,$$1,g' \${WRKSRC}/doc/man/*.[1-9]

CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		--prefix='${PREFIX}/share/wordnet' \
			--exec-prefix='${PREFIX}' \
			--sysconfdir='${SYSCONFDIR}' \
			--mandir='${PREFIX}/man' \
			--includedir='${PREFIX}/include' \
			--with-tcl=${LOCALBASE}/lib/tcl8.4 \
			--with-tk=${LOCALBASE}/lib/tk8.4

CFLAGS+=		-I${LOCALBASE}/include/tcl8.4 \
			-I${LOCALBASE}/include/tk8.4

CONFIGURE_ENV+=		CFLAGS="${CFLAGS}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
