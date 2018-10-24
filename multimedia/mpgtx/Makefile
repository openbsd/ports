# $OpenBSD: Makefile,v 1.11 2018/10/24 14:28:08 sthen Exp $

COMMENT=		command line MPEG audio/video/system file toolbox

DISTNAME=		mpgtx-1.3.1
REVISION =		2
CATEGORIES=		multimedia sysutils

HOMEPAGE=		http://mpgtx.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpgtx/}

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CC="${CXX}"
CONFIGURE_ARGS +=	--prefix='${PREFIX}'

ALL_TARGET=
NO_TEST=		Yes

.include <bsd.port.mk>
