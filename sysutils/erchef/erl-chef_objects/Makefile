# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:32:24 jasper Exp $

COMMENT=	object types and helpers for Erlang Chef

VERSION=	0.0.1
DISTNAME=	chef_objects-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_objects

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/erl-depsolver \
		devel/erl-ej \
		devel/erl-jiffy \
		devel/erl-meck \
		net/erl-ibrowse \
		net/erl-mini_s3 \
		sysutils/erchef/erl-chef_authn

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
