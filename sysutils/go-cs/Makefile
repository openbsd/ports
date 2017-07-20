# $OpenBSD: Makefile,v 1.4 2017/07/20 09:29:04 ajacoutot Exp $

COMMENT=		concurrent ssh client

GH_TAGNAME=		v0.9
GH_ACCOUNT=		akosela
GH_PROJECT=		go-cs

CATEGORIES=		sysutils net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/go

NO_TEST=		Yes

do-build:
	cd ${WRKSRC}/cs && ${MODGO_CMD} build ${MODGO_FLAGS} cs.go

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cs/cs ${PREFIX}/bin/go-cs
	${INSTALL_MAN} ${WRKSRC}/cs.1 ${PREFIX}/man/man1/go-cs.1

.include <bsd.port.mk>
