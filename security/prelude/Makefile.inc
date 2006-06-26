# $OpenBSD: Makefile.inc,v 1.1.1.1 2006/06/26 18:04:24 aanriot Exp $

SHARED_ONLY=	Yes

CATEGORIES=	security

HOMEPAGE=	http://www.prelude-ids.org/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.prelude-ids.org/download/releases/ \
		http://www.prelude-ids.org/download/releases/old/

CONFIGURE_ARGS+=--localstatedir=/var

USE_LIBTOOL=	Yes
