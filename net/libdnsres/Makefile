# $OpenBSD: Makefile,v 1.3 2008/02/14 21:36:27 rui Exp $

COMMENT=	non-blocking thread-safe API for resolving DNS names

DISTNAME= 	libdnsres-0.1a
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	dnsres	0.1	# .0.1
CATEGORIES=	net devel

HOMEPAGE=	http://monkey.org/~provos/libdnsres/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://monkey.org/~provos/

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	yes

.include <bsd.port.mk>
