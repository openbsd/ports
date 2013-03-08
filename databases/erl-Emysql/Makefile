# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 10:55:59 jasper Exp $

COMMENT=	Erlang MySQL driver

V=		0.2.14
DISTNAME=	Emysql-$V
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	databases lang/erlang

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/rebar
RUN_DEPENDS=	lang/erlang

NO_REGRESS=	Yes

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	V

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src

.include <bsd.port.mk>
