# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:11 espie Exp $

COMMENT =	abstract the storage of configuration settings

DISTNAME =	libmcs-0.7.2
PKGNAME =	${DISTNAME:S/lib//}

SHARED_LIBS =	mcs	1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.atheme.org/project/mcs

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 	c mowgli

MASTER_SITES =	http://distfiles.atheme.org/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =	devel/mowgli

MAKE_ENV =	LIBmcs_VERSION=${LIBmcs_VERSION}

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-gconf \
		 --disable-kconfig

NO_TEST =	Yes

.include <bsd.port.mk>
