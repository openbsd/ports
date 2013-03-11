# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:46 espie Exp $

COMMENT=	Erlang library to make RabbitMQ easy to use

VERSION=	0.1
DISTNAME=	gen_bunny-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	net lang/erlang

HOMEPAGE=	https://github.com/seth/gen_bunny

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/erl-meck \
		net/erl-amqp_client \
		net/erl-rabbit_common

MODULES=	lang/erlang

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
