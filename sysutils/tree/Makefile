# $OpenBSD: Makefile,v 1.1.1.1 2006/06/26 18:09:00 jasper Exp $

COMMENT=	"print ascii formatted tree of a directory structure"

DISTNAME=	tree-0.61
CATEGORIES=	sysutils

HOMEPAGE=	http://spootnik.org/tree/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes
WANTLIB=	c

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},' ${WRKSRC}/Makefile

.include <bsd.port.mk>
