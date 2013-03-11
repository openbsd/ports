# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:03 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	JSON NIFs for Erlang

VERSION=	0.8.2
DISTNAME=	jiffy-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/davisp/jiffy

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

WANTLIB=	stdc++

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/jiffy.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
