# $OpenBSD: Makefile,v 1.7 2006/10/27 23:53:27 steven Exp $

COMMENT=	"simple event correlator"

DISTNAME=	sec-2.4.0
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=simple-evcorr/}

HOMEPAGE=	http://www.estpak.ee/~risto/sec/

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sec.pl ${PREFIX}/bin/sec
	perl -pi -e "s/sec.pl/sec/g" ${WRKSRC}/sec.pl.man
	${INSTALL_MAN} ${WRKSRC}/sec.pl.man ${PREFIX}/man/man1/sec.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sec
	${INSTALL_DATA} ${WRKSRC}/contrib/itostream.c \
		${PREFIX}/share/examples/sec

.include <bsd.port.mk>
