# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:04 espie Exp $

COMMENT=	Erlang database layer

# git clone of 967068b6bf6d710a2b9ca9ea3ba8cdb1dcca31fc
VERSION=	0.0.1
DISTNAME=	sqerl-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	databases

# Apache2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

BUILD_DEPENDS=	databases/erl-Emysql \
		databases/erl-epgsql \
		devel/erl-pooler

ALL_TARGET=	compile
MODERL_TEST= eunit

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
