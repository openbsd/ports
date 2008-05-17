# $OpenBSD: Makefile,v 1.1.1.1 2008/05/17 17:08:17 jasper Exp $

COMMENT=		command line MPEG audio/video/system file toolbox

DISTNAME=		mpgtx-1.3.1
CATEGORIES=		multimedia sysutils

HOMEPAGE=		http://mpgtx.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpgtx/}

WANTLIB=		c m stdc++

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CC="${CXX}"

ALL_TARGET=
NO_REGRESS=		Yes

.include <bsd.port.mk>
