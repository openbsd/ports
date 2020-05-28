# $OpenBSD: Makefile,v 1.36 2020/05/28 12:23:38 okan Exp $

COMMENT=	simple event correlator

V=		2.8.3
DISTNAME=	sec-${V}
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/simple-evcorr/sec/releases/download/${V}/

HOMEPAGE=	https://simple-evcorr.github.io/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sec ${PREFIX}/bin/sec
	${INSTALL_MAN} ${WRKSRC}/sec.man ${PREFIX}/man/man1/sec.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sec
	${INSTALL_DATA} ${WRKSRC}/contrib/itostream.c \
		${WRKSRC}/contrib/swatch2sec.pl \
		${PREFIX}/share/examples/sec

.include <bsd.port.mk>
