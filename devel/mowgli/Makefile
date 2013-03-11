# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:11 espie Exp $

COMMENT =	performance and usability oriented extensions to C

DISTNAME =	libmowgli-1.0.0
PKGNAME =	${DISTNAME:S/lib//}

SHARED_LIBS =	mowgli	1.1

CATEGORIES =	devel

HOMEPAGE =	http://www.atheme.org/project/mowgli

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://distfiles.atheme.org/

MAKE_ENV =	LIBmowgli_VERSION=${LIBmowgli_VERSION}

CONFIGURE_STYLE = gnu

NO_TEST =	Yes

.include <bsd.port.mk>
