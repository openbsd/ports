# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:43 sthen Exp $

COMMENT=		concurrent ssh client

GH_TAGNAME=		v0.9
GH_ACCOUNT=		akosela
GH_PROJECT=		go-cs
REVISION=		1

CATEGORIES=		sysutils net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/go

NO_TEST=		Yes

do-build:
	cd ${WRKSRC}/cs && ${MODGO_CMD} build ${MODGO_FLAGS} cs.go

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cs/cs ${PREFIX}/bin/cs
	${INSTALL_MAN} ${WRKSRC}/cs.1 ${PREFIX}/man/man1/cs.1

.include <bsd.port.mk>
