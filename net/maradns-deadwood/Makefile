# $OpenBSD: Makefile,v 1.7 2014/04/29 17:21:27 gonzalo Exp $

COMMENT=	recursive DNS resolver

DISTNAME=	deadwood-3.2.05
PKGNAME=	${DISTNAME:S/^/maradns-/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net

HOMEPAGE=	http://maradns.samiam.org/deadwood

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://maradns.samiam.org/deadwood/stable/ \
		http://maradns.samiam.org/deadwood/stable/old/

MAKE_FLAGS=	FLAGS="${CFLAGS} -DIPV6" CC="${CC}"
WRKSRC=		${WRKDIST}/src

NO_TEST=	Yes

do-configure:
	cd ${WRKSRC}; perl -pi -e 's,/etc/,${SYSCONFDIR}/,g' DwMararc.h DwMain.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Deadwood ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/maradns-deadwood
	cd ${WRKDIST}/doc; \
	    ${INSTALL_MAN} Deadwood.1 ${PREFIX}/man/man1; \
	    ${INSTALL_DATA} dwood3rc ${PREFIX}/share/examples/maradns-deadwood/

.include <bsd.port.mk>
