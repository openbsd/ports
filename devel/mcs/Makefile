# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:42 sthen Exp $

COMMENT =	abstract the storage of configuration settings

DISTNAME =	libmcs-0.7.2
PKGNAME =	${DISTNAME:S/lib//}
REVISION =	2

SHARED_LIBS =	mcs	1.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/atheme/libmcs

# BSD
PERMIT_PACKAGE =	Yes

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
