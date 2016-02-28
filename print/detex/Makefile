# $OpenBSD: Makefile,v 1.31 2016/02/28 14:59:14 czarkoff Exp $

COMMENT=		strip TeX/LaTeX codes from a file

DISTNAME=		opendetex-2.8.1
PKGNAME=		detex-2.8.1
CATEGORIES=		print

HOMEPAGE=		https://code.google.com/archive/p/opendetex/
MASTER_SITES=		https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/opendetex/

EXTRACT_SUFX=		.tar.bz2

# NCSA/University of Illinois Open Source License
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MAKE_FLAGS=		DESTDIR="${LOCALBASE}/bin" CFLAGS="${CFLAGS}"

WRKDIST=		${WRKDIR}/opendetex

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/detex ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/detex.1l ${PREFIX}/man/man1/detex.1

do-test:
	cd ${WRKBUILD} && perl ${WRKSRC}/test.pl

.include <bsd.port.mk>
