# $OpenBSD: Makefile.inc,v 1.2 2005/10/02 13:16:23 espie Exp $

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
MASTER_SITES= http://squeak.hpl.hp.com/unix/release/

MAJOR=3
MINOR=7
SRC_V=7

V=${MAJOR}.${MINOR}
FULLV=${MAJOR}.${MINOR}-${SRC_V}

SUBST_VARS=FULLV V MAJOR 
DIST_SUBDIR?=squeak-$V

