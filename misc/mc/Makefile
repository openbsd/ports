# $OpenBSD: Makefile,v 1.7 2000/04/28 23:37:14 fgsch Exp $

DISTNAME=		mc-4.1.35
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	mc

MAINTAINER=		ryan@erwin.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			No

GNU_CONFIGURE=		Yes

BROKEN=			"security is bad; auditing on the way"

.include <bsd.port.mk>
