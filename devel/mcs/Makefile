# $OpenBSD: Makefile,v 1.5 2010/11/15 19:46:00 espie Exp $

COMMENT =	abstract the storage of configuration settings

DISTNAME =	libmcs-0.7.1
PKGNAME =	${DISTNAME:S/lib//}

SHARED_LIBS =	mcs	1.0

CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 	c mowgli

MASTER_SITES =	http://distfiles.atheme.org/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =	devel/mowgli

MAKE_ENV =	LIBmcs_VERSION=${LIBmcs_VERSION}

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --disable-gconf \
		 --disable-kconfig

NO_REGRESS =	Yes

.include <bsd.port.mk>
