# $OpenBSD: Makefile,v 1.12 2002/12/29 20:19:10 fgsch Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"print inode contents"

DISTNAME=	stat-1.3
CATEGORIES=	sysutils
MASTER_SITES=	http://people.freebsd.org/~wosch/src/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/stat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/stat.cat1 ${PREFIX}/man/man1/stat.0

.include <bsd.port.mk>
