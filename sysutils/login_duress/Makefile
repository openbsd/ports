# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:45 sthen Exp $

COMMENT=		BSD authentication module for duress passwords

GH_ACCOUNT=		jcs
GH_PROJECT=		login_duress
GH_TAGNAME=		v1.1

CATEGORIES=		sysutils security

MAINTAINER=		joshua stein <jcs@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c util

FAKE_FLAGS=		BINDIR=${PREFIX}/libexec/auth \
			MANDIR=${PREFIX}/man/man

pre-install:
	@mkdir ${PREFIX}/libexec/auth

post-install:
	@mkdir ${PREFIX}/share/doc/login_duress
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/login_duress/

.include <bsd.port.mk>
