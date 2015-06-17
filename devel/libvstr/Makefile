# $OpenBSD: Makefile,v 1.8 2015/06/17 07:11:28 bentley Exp $

COMMENT =	string library designed for network communication

V =		1.0.15
DISTNAME =	vstr-$V
REVISION =	0

SHARED_LIBS =	vstr-1.0	0.0 \
		vstr		0.0

CATEGORIES =	devel

HOMEPAGE =	http://www.and.org/vstr/

# mostly LGPLv2.1+, assert_loop.c GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.and.org/vstr/$V/

TEST_FLAGS =		CPPFLAGS="${CPPFLAGS} -I${WRKSRC}/include"

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
