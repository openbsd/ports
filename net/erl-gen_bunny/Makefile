# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:03:04 jasper Exp $

COMMENT=	Erlang library to make RabbitMQ easy to use

VERSION=	0.1
DISTNAME=	gen_bunny-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	net lang/erlang

HOMEPAGE=	https://github.com/seth/gen_bunny

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/rebar \
		devel/erl-meck \
		net/erl-amqp_client \
		net/erl-rabbit_common
RUN_DEPENDS=	lang/erlang \
		devel/erl-meck \
		net/erl-amqp_client \
		net/erl-rabbit_common

REGRESS_TARGET=	test

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION


do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
