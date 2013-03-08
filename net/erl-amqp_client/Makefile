# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:02:38 jasper Exp $

COMMENT=	stripped down distribution of the rabbitmq-erlang client

VERSION=	0.0.0.0
DISTNAME=	amqp_client-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	net lang/erlang

HOMEPAGE=	https://github.com/seth/amqp_client

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/rebar \
		net/erl-rabbit_common
RUN_DEPENDS=	lang/erlang \
		net/erl-rabbit_common

NO_REGRESS=	Yes
ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/rebar compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
