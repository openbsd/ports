# $OpenBSD: Makefile,v 1.1.1.1 2002/01/24 17:05:36 aaron Exp $

COMMENT=	"displays the status of multi-player Internet Game servers"

DISTNAME=	qstat24e
PKGNAME=	qstat-2.4e
CATEGORIES=	games
NEED_VERSION=	1.504

MAINTAINER=	Aaron Campbell <aaron@openbsd.org>

HOMEPAGE=	http://www.qstat.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.qstat.org/

DOCS=		CHANGES.txt qstat.txt qstatdoc.html

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/qstat ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qstat
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/qstat

.include <bsd.port.mk>
