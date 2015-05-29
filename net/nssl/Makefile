# $OpenBSD: Makefile,v 1.7 2015/05/29 07:33:21 ajacoutot Exp $

COMMENT=		netcat-like program with transparent SSL support

DISTNAME=		nssl.005
PKGNAME=		nssl-005
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://nssl.sourceforge.net/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# None
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_FTP=	No

WANTLIB=		crypto ssl c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nssl/}
EXTRACT_SUFX=		.tgz

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/nssl

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/nssl ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nssl/
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/nssl/

.include <bsd.port.mk>
