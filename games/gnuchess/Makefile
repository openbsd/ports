# $OpenBSD: Makefile,v 1.17 2001/06/20 01:43:18 pvalchev Exp $

COMMENT=	"Classic Gnu Chess"

DISTNAME=	gnuchess-4.0.pl80
PKGNAME=	gnuchess-4.0.80
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnuchess

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest

WRKDIST=	${WRKDIR}/${DISTNAME}/src

.include <bsd.port.mk>
