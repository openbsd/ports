# $OpenBSD: Makefile,v 1.2 2013/03/10 18:17:42 jasper Exp $

COMMENT=	Erlang database layer

# git clone of 967068b6bf6d710a2b9ca9ea3ba8cdb1dcca31fc
VERSION=	0.0.1
DISTNAME=	sqerl-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	databases lang/erlang

# Apache2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://distfiles.nl/

USE_GMAKE=	Yes

BUILD_DEPENDS=	databases/erl-Emysql \
		databases/erl-epgsql \
		devel/erl-pooler \
		devel/rebar

ALL_TARGET=	compile
REGRESS_TARGET=	eunit

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
