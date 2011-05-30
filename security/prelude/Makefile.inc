# $OpenBSD: Makefile.inc,v 1.3 2011/05/30 10:05:03 espie Exp $

SHARED_ONLY=	Yes

CATEGORIES=	security

HOMEPAGE=	http://www.prelude-ids.org/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

CONFIGURE_ARGS+=--localstatedir=/var
CONFIGURE_ENV += ac_cv_path_GREP=/usr/bin/grep ac_cv_path_EGREP=/usr/bin/egrep
