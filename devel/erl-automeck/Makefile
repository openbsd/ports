# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:03 espie Exp $

COMMENT=	streamlines setting up and used Meck-based mocks

VERSION=	0.2
DISTNAME=	automeck-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/opscode/automeck

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

RUN_DEPENDS=	devel/erl-meck

NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
