# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:08:49 jasper Exp $

COMMENT=	logging framework for Erlang/OTP

VERSION=	1.2.2
DISTNAME=	lager-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	sysutils lang/erlang

HOMEPAGE=	https://github.com/basho/lager

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/rebar
RUN_DEPENDS=	lang/erlang

REGRESS_TARGET=	test

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
