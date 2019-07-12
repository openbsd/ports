# $OpenBSD: Makefile,v 1.14 2019/07/12 20:50:18 sthen Exp $

PORTROACH=	limit:^v

COMMENT=	Erlang library for building lightweight HTTP servers

V=		2.12.2
GH_ACCOUNT=	mochi
GH_PROJECT=	mochiweb
GH_TAGNAME=	v$V
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=	erl-${GH_PROJECT}-$V
CATEGORIES=	www

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/erlang

SUBST_VARS+=	V

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,scripts,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/scripts/*.erl ${ERL_LIBDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
