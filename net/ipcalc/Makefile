# $OpenBSD: Makefile,v 1.1.1.1 2006/10/24 11:57:05 ajacoutot Exp $

COMMENT=	"small network calculator"

DISTNAME=	ipcalc-1.1
CATEGORIES=	net

HOMEPAGE=	http://spootnik.org/ipcalc/

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes
WANTLIB=	c

do-configure:
	@perl -pi -e 's,/usr/local,${PREFIX},g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
