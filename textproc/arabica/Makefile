# $OpenBSD: Makefile,v 1.13 2019/07/12 20:49:56 sthen Exp $

COMMENT =	XML and HTML processing toolkit
DISTNAME =	arabica-2010-November
PKGNAME =	arabica-2010.11
CATEGORIES =	textproc
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=arabica/}
REVISION =	3

HOMEPAGE =	http://www.jezuk.co.uk/cgi-bin/view/arabica

SHARED_LIBS +=	arabica	0.0 # 0.0

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB +=	c expat m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =	devel/boost
CONFIGURE_ENV =	CPPFLAGS='-I${LOCALBASE}/include'

.include <bsd.port.mk>
