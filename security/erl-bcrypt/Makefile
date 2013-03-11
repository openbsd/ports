# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:24 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Erlang wrapper for OpenBSD's blowfish #' emacs, relax.

VERSION=	0.5.0.2
DISTNAME=	erlang-bcrypt-${VERSION}
PKGNAME=	erl-${DISTNAME:S/erlang-//}
REVISION=	0
CATEGORIES=	security

HOMEPAGE=	https://github.com/opscode/bcrypt

# ISC/BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

WANTLIB=	pthread

MODULES=	lang/erlang

TEST_TARGET=	tests

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
