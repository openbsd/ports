# $OpenBSD: Makefile,v 1.10 2004/02/25 03:49:29 naddy Exp $

COMMENT=	"hacked 9wm, with support for virtual screens"

DISTNAME=	w9wm-0.4.2
CATEGORIES=	plan9

HOMEPAGE=	http://www.grassouille.org/code/w9wm.en.html

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.grassouille.org/code/w9wm/src/

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

WRKSRC=${WRKDIR}/${DISTNAME}.orig

.include <bsd.port.mk>
