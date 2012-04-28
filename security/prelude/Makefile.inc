# $OpenBSD: Makefile.inc,v 1.5 2012/04/28 10:52:08 ajacoutot Exp $

SHARED_ONLY=	Yes

CATEGORIES=	security

HOMEPAGE=	http://www.prelude-ids.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_GMAKE=	Yes

CONFIGURE_ENV += ac_cv_path_GREP=/usr/bin/grep ac_cv_path_EGREP=/usr/bin/egrep
