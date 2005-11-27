# $OpenBSD: Makefile,v 1.15 2005/11/27 15:09:00 sturm Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

IGNORE=		"-- a stat utility is included in ${OPSYS} as of release 3.8"

COMMENT=	"print inode contents"

DISTNAME=	stat-1.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	sysutils
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/stat.cat1 ${PREFIX}/man/cat1/stat.0

.include <bsd.port.mk>
