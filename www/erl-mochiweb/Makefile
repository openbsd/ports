# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:12:42 jasper Exp $

COMMENT=	Erlang library for building lightweight HTTP servers

VERSION=	1.5.1
DISTNAME=	mochiweb-${VERSION}p3
PKGNAME=	erl-${DISTNAME:S/p3//}
CATEGORIES=	www lang/erlang

HOMEPAGE=	https://github.com/basho/mochiweb

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar \
		devel/rebar
RUN_DEPENDS=	lang/erlang

REGRESS_TARGET=	test

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,scripts,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/scripts/*.erl ${ERL_LIBDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
