# $OpenBSD: Makefile,v 1.11 2019/07/14 02:16:52 naddy Exp $

COMMENT=		netcat-like program with transparent SSL support

DISTNAME=		nssl.005
PKGNAME=		nssl-005
REVISION=		4
CATEGORIES=		net
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://nssl.sourceforge.net/

# None
PERMIT_PACKAGE=		No
PERMIT_DISTFILES=	No

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
