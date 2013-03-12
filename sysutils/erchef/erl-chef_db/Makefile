# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:31:18 jasper Exp $

COMMENT=	database application layer for the Chef server

VERSION=	0.0.1
DISTNAME=	chef_db-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_certgen

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	databases/erl-couchbeam \
		databases/erl-sqerl \
		devel/erl-ej \
		devel/erl-meck \
		sysutils/erl-stats_hero \
		sysutils/erchef/erl-chef_objects

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
