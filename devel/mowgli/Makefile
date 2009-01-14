# $OpenBSD: Makefile,v 1.2 2009/01/14 21:06:39 fgsch Exp $

COMMENT =	performance and usability oriented extensions to C

V =		0.7.0
DISTNAME =	libmowgli-$V
PKGNAME =	mowgli-$V

SHARED_LIBS =	mowgli	1.0

CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://distfiles.atheme.org/
EXTRACT_SUFX =	.tgz

MAKE_ENV =	LIBmowgli_VERSION=${LIBmowgli_VERSION}

CONFIGURE_STYLE = gnu

NO_REGRESS =	Yes

.include <bsd.port.mk>
