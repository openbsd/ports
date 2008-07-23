# $OpenBSD: Makefile.inc,v 1.3 2008/07/23 11:17:22 espie Exp $

CATEGORIES =	lang
MAINTAINER =	Marc Espie <espie@openbsd.org>

# Apple license, similar to GPL, with a clause to protect Apple
# against litigation
# Large explanation on http://minnow.cc.gatech.edu/squeak/159
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://squeak.org/
SQUEAK_SITE=	http://ftp.squeak.org/${MAJOR}.${MINOR}/

MAJOR =		3
MINOR =		10
SOURCEV =	3.9

V =		${MAJOR}.${MINOR}
SQUEAK_DIR =	${PREFIX}/lib/squeak


SUBST_VARS +=	V SQUEAK_DIR
DIST_SUBDIR ?=	squeak-$V

