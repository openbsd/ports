# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:54 sthen Exp $

COMMENT=		strip TeX/LaTeX codes from a file

DISTNAME=		opendetex-2.8.1
PKGNAME=		detex-2.8.1
CATEGORIES=		print

HOMEPAGE=		https://code.google.com/archive/p/opendetex/
MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=opendetex/}

EXTRACT_SUFX=		.tar.bz2

# NCSA/University of Illinois Open Source License
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MAKE_FLAGS=		DESTDIR="${LOCALBASE}/bin" CFLAGS="${CFLAGS}"

WRKDIST=		${WRKDIR}/opendetex

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/man/man1/detex.1

do-test:
	cd ${WRKBUILD} && perl ${WRKSRC}/test.pl

.include <bsd.port.mk>
