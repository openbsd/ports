# $OpenBSD: Makefile,v 1.6 2013/03/11 13:02:16 jasper Exp $

COMMENT=	logging library used for chef

# git clone of 0db6ec3238e012aad64956fbbb9d48bb457113a3
VERSION=	0.2.0.1
DISTNAME=	fast_log-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	https://github.com/opscode/fast-log-erlang

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

ALL_TARGET=	compile

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
