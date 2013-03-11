# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:44 espie Exp $

COMMENT=		command line MPEG audio/video/system file toolbox

DISTNAME=		mpgtx-1.3.1
CATEGORIES=		multimedia sysutils

HOMEPAGE=		http://mpgtx.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpgtx/}

WANTLIB=		c m stdc++

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CC="${CXX}"

ALL_TARGET=
USE_GROFF =		Yes
NO_TEST=		Yes

.include <bsd.port.mk>
