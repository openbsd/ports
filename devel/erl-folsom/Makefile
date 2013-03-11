# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:03 espie Exp $

COMMENT=	expose Erlang events and metrics

VERSION=	0.7.4
DISTNAME=	folsom-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/boundary/jiffy

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

RUN_DEPENDS=	devel/erl-automeck \
		devel/erl-bear

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/folsom.app.src

do-build:
	cd ${WRKSRC} && ${REBAR_BIN} compile

do-test:
	cd ${WRKSRC} && ${REBAR_BIN} eunit

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
