# $OpenBSD: Makefile,v 1.5 2014/03/18 10:50:47 ajacoutot Exp $

COMMENT=	recursive DNS resolver

DISTNAME=	deadwood-3.2.03c
PKGNAME=	${DISTNAME:S/^/maradns-/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	http://maradns.org/deadwood/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://www.maradns.org/deadwood/stable/ \
		http://www.maradns.org/deadwood/stable/old/

MAKE_FLAGS=	FLAGS="${CFLAGS} -DIPV6" CC="${CC}"
WRKSRC=		${WRKDIST}/src

post-extract:
	rm ${WRKSRC}/*.orig

do-configure:
	cd ${WRKSRC}; perl -pi -e 's,/etc/,${SYSCONFDIR}/,g' DwMararc.h DwMain.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Deadwood ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/maradns-deadwood
	cd ${WRKDIST}/doc; \
	    ${INSTALL_MAN} Deadwood.1 ${PREFIX}/man/man1; \
	    ${INSTALL_DATA} dwood3rc ${PREFIX}/share/examples/maradns-deadwood/

.include <bsd.port.mk>
