# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:01 sthen Exp $

COMMENT=	Erlang wrapper for OpenBSD's blowfish #' emacs, relax.

VERSION=	0.5.0.2
DISTNAME=	erlang-bcrypt-${VERSION}
PKGNAME=	erl-${DISTNAME:S/erlang-//}
REVISION=	4
CATEGORIES=	security

HOMEPAGE=	https://github.com/opscode/bcrypt

# ISC/BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://distfiles.nl/

WANTLIB=	c pthread

MODULES=	lang/erlang

TEST_TARGET=	tests

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
