# $OpenBSD: Makefile,v 1.1.1.1 2005/08/09 20:14:27 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"change resolution on available vbios mode for i855/865/915"

DISTNAME=	855resolution-0.4
CATEGORIES=	x11

HOMEPAGE=	http://perso.wanadoo.fr/apoirier/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/855resolution

.include <bsd.port.mk>
