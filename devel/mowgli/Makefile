# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:43 sthen Exp $

COMMENT =	performance and usability oriented extensions to C

DISTNAME =	libmowgli-1.0.0
PKGNAME =	${DISTNAME:S/lib//}
REVISION =	2

SHARED_LIBS =	mowgli	1.1

CATEGORIES =	devel

HOMEPAGE =	http://atheme.org/projects/libmowgli.html

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	http://distfiles.atheme.org/

MAKE_ENV =	LIBmowgli_VERSION=${LIBmowgli_VERSION}

CONFIGURE_STYLE = gnu

NO_TEST =	Yes

.include <bsd.port.mk>
