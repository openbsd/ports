# $OpenBSD: Makefile,v 1.3 2013/03/10 19:20:06 jasper Exp $

COMMENT=	Erlang database layer

# git clone of 967068b6bf6d710a2b9ca9ea3ba8cdb1dcca31fc
VERSION=	0.0.1
DISTNAME=	sqerl-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	databases

# Apache2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

BUILD_DEPENDS=	databases/erl-Emysql \
		databases/erl-epgsql \
		devel/erl-pooler

CONFIGURE_STYLE= rebar

ALL_TARGET=	compile
MODERL_REGRESS= eunit

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
