# $OpenBSD: Makefile,v 1.3 2010/12/06 08:24:36 shadchin Exp $

COMMENT =	performance and usability oriented extensions to C

DISTNAME =	libmowgli-0.7.1
PKGNAME =	${DISTNAME:S/lib//}

SHARED_LIBS =	mowgli	1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.atheme.org/project/mowgli

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
