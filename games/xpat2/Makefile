# $OpenBSD: Makefile,v 1.17 2002/09/19 07:00:42 pvalchev Exp $

COMMENT=	"X11 solitaire with 14 variations"

DISTNAME=	xpat2-1.04
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WRKSRC=${WRKDIST}/src
CONFIGURE_STYLE=imake

.include <bsd.port.mk>
