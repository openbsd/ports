# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:31:52 jasper Exp $

COMMENT=	search and indexing layer for the Chef server

VERSION=	0.0.1
DISTNAME=	chef_index-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_index

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/erl-ej \
		devel/erl-jiffy \
		net/erl-gen_bunny \
		net/erl-ibrowse \
		textproc/erl-neotoma

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
