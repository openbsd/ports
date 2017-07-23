# $OpenBSD: Makefile,v 1.8 2017/07/23 09:26:28 espie Exp $

COMMENT=		command line MPEG audio/video/system file toolbox

DISTNAME=		mpgtx-1.3.1
REVISION =		0
CATEGORIES=		multimedia sysutils

HOMEPAGE=		http://mpgtx.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpgtx/}

WANTLIB=		c m ${COMPILER_LIBCXX}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CC="${CXX}"

ALL_TARGET=
NO_TEST=		Yes

.include <bsd.port.mk>
