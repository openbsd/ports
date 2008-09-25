# $OpenBSD: Makefile,v 1.9 2008/09/25 20:43:56 rui Exp $

COMMENT=	library to determine file type
V=		4.26
DISTNAME= 	file-${V}
PKGNAME=	libmagic-${V}
SHARED_LIBS=	magic	1.0
CATEGORIES=	sysutils devel

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

WANTLIB=	z 
CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
