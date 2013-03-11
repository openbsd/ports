# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:46 espie Exp $

COMMENT=	Erlang HTTP client

VERSION=	4.0.1.1
DISTNAME=	ibrowse-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	1
CATEGORIES=	net

HOMEPAGE=	https://github.com/opscode/ibrowse

# LGPL / BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
