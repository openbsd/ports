# $OpenBSD: Makefile,v 1.8 2002/04/24 17:07:54 danh Exp $
# $FreeBSD: ports/archivers/fastjar/Makefile,v 1.4 2000/04/24 15:51:08 knu Exp $

COMMENT=	"Sun JDK's jar command written entirely in C"

DISTNAME=	fastjar-0.93
CATEGORIES=     archivers
NEED_VERSION=	1.522
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= fastjar
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fastjar.sourceforge.net/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GNU GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
NO_REGRESS=	Yes

.include <bsd.port.mk>
