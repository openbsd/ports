# $OpenBSD: Makefile,v 1.18 2012/03/08 15:36:03 okan Exp $

COMMENT=	simple event correlator

DISTNAME=	sec-2.6.2
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=simple-evcorr/}

HOMEPAGE=	http://www.estpak.ee/~risto/sec/

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sec ${PREFIX}/bin/sec
	${INSTALL_MAN} ${WRKSRC}/sec.man ${PREFIX}/man/man1/sec.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sec
	${INSTALL_DATA} ${WRKSRC}/contrib/itostream.c \
		${WRKSRC}/contrib/swatch2sec.pl \
		${PREFIX}/share/examples/sec

.include <bsd.port.mk>
