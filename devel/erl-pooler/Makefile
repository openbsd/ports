# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:03 espie Exp $

COMMENT=	OTP process pool application

VERSION=	0.0.2
DISTNAME=	pooler-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/seth/pooler

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/pooler.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
