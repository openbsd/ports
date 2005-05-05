# $OpenBSD: Makefile,v 1.1.1.1 2005/05/05 21:18:56 sturm Exp $

COMMENT=	"simple event correlator"

DISTNAME=	sec-2.3.1
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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sec.pl ${PREFIX}/bin/sec
	perl -pi -e "s/sec.pl/sec/g" ${WRKSRC}/sec.pl.man
	${INSTALL_MAN} ${WRKSRC}/sec.pl.man ${PREFIX}/man/man1/sec.1

.include <bsd.port.mk>
