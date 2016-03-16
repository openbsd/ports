# $OpenBSD: Makefile,v 1.7 2016/03/16 21:19:38 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT =	optimizing Oberon-2 to C compiler

DISTNAME =	oo2c_32-2.1.11
REVISION =	1
SHARED_LIBS =	oo2c 3.0

CATEGORIES =	lang

HOMEPAGE =	http://sourceforge.net/projects/ooc/

MAINTAINER =	Alexander Shiryaev <shiryaev.a.v@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ooc/}
EXTRACT_SUFX =	.tar.bz2

WANTLIB =	c pthread m gc>=3.0

BUILD_DEPENDS =	sysutils/ggrep \
		textproc/libxslt
LIB_DEPENDS =	devel/boehm-gc

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="${CFLAGS} -O0 -I${LOCALBASE}/include -DGC_PTR='void*'" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}" \
			mandir="${WRKINST}${PREFIX}/man/man1"

TEST_TARGET =	test

.include <bsd.port.mk>
