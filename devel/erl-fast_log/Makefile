# $OpenBSD: Makefile,v 1.3 2013/03/10 19:20:06 jasper Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

CONFIGURE_STYLE=rebar

ALL_TARGET=	compile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/fast_log.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
