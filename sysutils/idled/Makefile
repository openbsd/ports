# $OpenBSD: Makefile,v 1.7 2000/04/09 17:38:16 espie Exp $

DISTNAME=	idled-1.16
CATEGORIES=	sysutils
FAKE=No
MASTER_SITES=	http://www.darkwing.com/idled/download/ \
		ftp://ftp.cs.hope.edu/pub/idled/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

post-extract:
	@(cd ${WRKSRC}; make clean)

.include <bsd.port.mk>
