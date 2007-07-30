# $OpenBSD: Makefile,v 1.2 2007/07/30 15:36:34 steven Exp $

COMMENT=	trivial database library

DISTNAME=	tdb-1.0.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases
SHARED_LIBS+=	tdb	1.0

MAINTAINER=    	Nicholas Marriott <nicm@users.sourceforge.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tdb/}
CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.13
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
