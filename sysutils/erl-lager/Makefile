# $OpenBSD: Makefile,v 1.4 2013/03/11 11:41:30 espie Exp $

COMMENT=	logging framework for Erlang/OTP

VERSION=	1.2.2
DISTNAME=	lager-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/basho/lager

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
