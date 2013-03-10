# $OpenBSD: Makefile,v 1.4 2013/03/10 20:11:41 jasper Exp $

COMMENT=	stripped down version of the RabbitMQ server

VERSION=	2.1.0
DISTNAME=	rabbit_common-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	https://github.com/seth/rabbit_common

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/erl-gen_server2

MODULES=	lang/erlang

do-build:
	cd ${WRKSRC} && ${REBAR_BIN} compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
