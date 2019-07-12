# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:04 sthen Exp $

COMMENT=	small service wedge to do ident lookup on connecting party

DISTNAME=		klaxon
PKGNAME=		klaxon-1.5
CATEGORIES=     	security

HOMEPAGE=		http://www.eng.auburn.edu/users/doug/second.html

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		ftp://ftp.eng.auburn.edu/pub/doug/

ALL_TARGET=		target
MAKE_FLAGS+=		CFLAGS="${CFLAGS}" CC="${CC}"

NO_TEST=		Yes

pre-patch:
	@cd ${WRKSRC} && chmod +w klaxon.c && rm -rf SCCS

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/klaxon.5x.ident ${PREFIX}/sbin/klaxon
	@strip ${PREFIX}/sbin/klaxon

.include <bsd.port.mk>
