# $OpenBSD: Makefile.inc,v 1.1 2004/07/21 11:19:30 espie Exp $

CATEGORIES=	lang
MAINTAINER=	Marc Espie <espie@openbsd.org>
NOT_FOR_ARCHS=${LP64_ARCHS}

# Apple license, similar to GPL, with a clause to protect Apple
# against litigation
# Large explanation on http://minnow.cc.gatech.edu/squeak/159
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=	http://squeak.org/
MASTER_SITES= http://www-sor.inria.fr/~piumarta/squeak/unix/release/

MAJOR=3
MINOR=6
SRC_V=3

V=${MAJOR}.${MINOR}

SUBST_VARS=V MAJOR
DIST_SUBDIR=squeak-$V

