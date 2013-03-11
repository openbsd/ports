# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:03 espie Exp $

COMMENT=	module for working with Erlang terms representing JSON

VERSION=	0.0.2.1
DISTNAME=	ej-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/seth/ej

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/ej.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
