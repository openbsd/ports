# $OpenBSD: Makefile,v 1.21 2013/03/11 10:50:02 espie Exp $

COMMENT=	like make(1), but more powerful and clean

DISTNAME=	cook-2.21
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=       http://www.canb.auug.org.au/~millerp/cook/

MODULES=	devel/gettext

MAINTAINER=	Gregory Steuck <greg@nest.cx>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

DESTDIRNAME=RPM_BUILD_ROOT

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --libdir="${PREFIX}/share/locale"
USE_GROFF =	Yes

TEST_TARGET=	sure
TEST_FLAGS=	HOME=/ LOGNAME=nobody

.include <bsd.port.mk>
