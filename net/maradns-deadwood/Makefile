# $OpenBSD: Makefile,v 1.1.1.1 2012/03/21 16:17:58 sthen Exp $

COMMENT=	recursive DNS resolver

DISTNAME=	deadwood-3.2.02
PKGNAME=	${DISTNAME:S/^/maradns-/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net

HOMEPAGE=	http://www.maradns.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
