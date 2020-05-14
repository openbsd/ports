# $OpenBSD: Makefile,v 1.3 2020/05/14 21:08:01 jcs Exp $

COMMENT=		BSD authentication module for duress passwords

GH_ACCOUNT=		jcs
GH_PROJECT=		login_duress
GH_TAGNAME=		v1.1
REVISION=		0

CATEGORIES=		sysutils security

MAINTAINER=		joshua stein <jcs@jcs.org>

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
