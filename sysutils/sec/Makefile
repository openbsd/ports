# $OpenBSD: Makefile,v 1.27 2015/12/17 19:52:03 okan Exp $

COMMENT=	simple event correlator

V=		2.7.8
DISTNAME=	sec-${V}
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/simple-evcorr/sec/releases/download/${V}/

HOMEPAGE=	http://simple-evcorr.github.io/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
