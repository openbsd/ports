# $OpenBSD: Makefile,v 1.2 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"displays the status of multi-player Internet Game servers"

DISTNAME=	qstat24e
PKGNAME=	qstat-2.4e
CATEGORIES=	games

MAINTAINER=	Aaron Campbell <aaron@openbsd.org>

HOMEPAGE=	http://www.qstat.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.qstat.org/

NO_REGRESS=	Yes

DOCS=		CHANGES.txt qstat.txt qstatdoc.html

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/qstat

.include <bsd.port.mk>
