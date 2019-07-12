# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:47:23 sthen Exp $

CATEGORIES =	lang
MAINTAINER =	Marc Espie <espie@openbsd.org>

# Apple license, similar to GPL, with a clause to protect Apple
# against litigation
# Large explanation on http://minnow.cc.gatech.edu/squeak/159
PERMIT_PACKAGE =	Yes

HOMEPAGE =	http://squeak.org/
SQUEAK_SITE=	http://ftp.squeak.org/${MAJOR}.${MINOR}/

MAJOR =		3
MINOR =		10
SOURCEV =	3.9

V =		${MAJOR}.${MINOR}
SQUEAK_DIR =	${PREFIX}/lib/squeak


SUBST_VARS +=	V SQUEAK_DIR
DIST_SUBDIR ?=	squeak-$V

