# $OpenBSD: Makefile,v 1.2 2013/03/10 19:20:06 jasper Exp $

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

CONFIGURE_STYLE=rebar

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/rebar compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
