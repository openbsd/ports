# $OpenBSD: Makefile,v 1.9 2001/03/03 19:17:11 danh Exp $

DISTNAME=		mc-4.1.35
CATEGORIES=		misc
NEED_VERSION=		1.305
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	mc

MAINTAINER=		ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=			No

CONFIGURE_STYLE=	gnu

BROKEN=			"security is bad; auditing on the way"

.include <bsd.port.mk>
