# $OpenBSD: Makefile,v 1.6 2011/09/21 17:20:56 jasper Exp $

COMMENT=	non-blocking thread-safe API for resolving DNS names

DISTNAME= 	libdnsres-0.1a
REVISION=	1
SHARED_LIBS=	dnsres	0.1	# .0.1
CATEGORIES=	net devel

HOMEPAGE=	http://monkey.org/~provos/libdnsres/

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://monkey.org/~provos/

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	yes
USE_GROFF =	Yes

.include <bsd.port.mk>
