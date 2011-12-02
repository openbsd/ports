# $OpenBSD: Makefile,v 1.4 2011/12/02 06:36:28 shadchin Exp $

COMMENT =	performance and usability oriented extensions to C

DISTNAME =	libmowgli-1.0.0
PKGNAME =	${DISTNAME:S/lib//}

SHARED_LIBS =	mowgli	1.1

CATEGORIES =	devel

HOMEPAGE =	http://www.atheme.org/project/mowgli

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://distfiles.atheme.org/

MAKE_ENV =	LIBmowgli_VERSION=${LIBmowgli_VERSION}

CONFIGURE_STYLE = gnu

NO_REGRESS =	Yes

.include <bsd.port.mk>
