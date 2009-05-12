# $OpenBSD: Makefile,v 1.1.1.1 2009/05/12 21:38:59 sthen Exp $

COMMENT =	string library designed for network communication

V =		1.0.15
DISTNAME =	vstr-$V

SHARED_LIBS =	vstr-1.0	0.0 \
		vstr		0.0

CATEGORIES =	devel

HOMEPAGE =	http://www.and.org/vstr/

# mostly LGPLv2.1+, assert_loop.c GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		ftp://ftp.and.org/pub/james/vstr/$V/

REGRESS_FLAGS =		CPPFLAGS="${CPPFLAGS} -I${WRKSRC}/include"

SEPARATE_BUILD =	concurrent
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
