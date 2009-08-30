# $OpenBSD: Makefile.inc,v 1.2 2009/08/30 20:37:16 rui Exp $

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
