# $OpenBSD: Makefile,v 1.1.1.1 2001/02/17 11:57:18 jakob Exp $

DISTNAME=		heimdal-0.3e
CATEGORIES=     	security
NEED_VERSION=		1.352

HOMEPAGE=		http://www.pdc.kth.se/heimdal/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.pdc.kth.se/pub/heimdal/src/

PREFIX=			${LOCALBASE}/heimdal

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--localstatedir=/var/heimdal \
		        --x-includes=/usr/X11R6/include \
			--x-libraries=/usr/X11R6/lib \
		        --with-krb4-lib=/usr/lib \
			--with-krb4-include=/usr/include/kerberosIV \
			${CONFIGURE_SHARED}

.include <bsd.port.mk>
