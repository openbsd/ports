# $OpenBSD: Makefile,v 1.1 2004/02/18 20:59:24 djm Exp $

COMMENT=	"Embedded SQL implementation"

DISTNAME=	sqlite-2.8.12
CATEGORIES=	databases
HOMEPAGE=	http://www.hwaci.com/sw/sqlite/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Damien Miller <djm@openbsd.org>

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf dest
AUTOCONF_VERSION=	2.57
USE_GMAKE=		Yes
WRKDIST=		${WRKDIR}/sqlite
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

NO_REGRESS=		Yes

.include <bsd.port.mk>

