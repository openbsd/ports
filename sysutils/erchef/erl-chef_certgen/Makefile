# $OpenBSD: Makefile,v 1.1.1.1 2013/03/12 07:30:55 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	certificate generator for Erlang Chef

VERSION=	0.0.1
DISTNAME=	chef_certgen-${VERSION}

HOMEPAGE=	https://github.com/opscode/chef_certgen

WANTLIB += crypto

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
