# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:30:21 jasper Exp $

COMMENT=	authentication layer for Erlang Chef

VERSION=	0.0.1
DISTNAME=	chef_authn-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_authn

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
