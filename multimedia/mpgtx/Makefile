# $OpenBSD: Makefile,v 1.10 2018/08/10 10:20:22 espie Exp $

COMMENT=		command line MPEG audio/video/system file toolbox

DISTNAME=		mpgtx-1.3.1
REVISION =		1
CATEGORIES=		multimedia sysutils

HOMEPAGE=		http://mpgtx.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mpgtx/}

WANTLIB=		c m ${COMPILER_LIBCXX}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CC="${CXX}"
CONFIGURE_ARGS +=	--prefix='${PREFIX}'

ALL_TARGET=
NO_TEST=		Yes

.include <bsd.port.mk>
