# $OpenBSD: Makefile,v 1.11 2003/05/24 01:05:14 jolan Exp $
# $FreeBSD: ports/archivers/fastjar/Makefile,v 1.4 2000/04/24 15:51:08 knu Exp $

COMMENT=	"Sun JDK's jar command written entirely in C"

DISTNAME=	fastjar-0.93
CATEGORIES=     archivers
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fastjar/}
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://fastjar.sourceforge.net/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
NO_REGRESS=	Yes

.include <bsd.port.mk>
