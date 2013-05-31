# $OpenBSD: Makefile,v 1.22 2013/05/31 14:50:27 jasper Exp $

COMMENT=	like make(1), but more powerful and clean

DISTNAME=	cook-2.21
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=       http://miller.emu.id.au/pmiller/software/cook/

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
