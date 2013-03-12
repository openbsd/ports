# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:32:50 jasper Exp $

COMMENT=	chef_wm the webmachine layer for the Chef server

VERSION=	0.0.1
DISTNAME=	chef_wm-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_wm

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/erl-fast_log \
		devel/erl-folsom \
		devel/erl-mixer>=0.1.1p1 \
		security/erl-bcrypt \
		sysutils/erchef/erl-chef_authn \
		sysutils/erchef/erl-chef_certgen \
		sysutils/erchef/erl-chef_db \
		sysutils/erchef/erl-chef_index \
		www/erl-webmachine

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
