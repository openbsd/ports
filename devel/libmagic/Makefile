# $OpenBSD: Makefile,v 1.10 2009/04/04 18:28:14 rui Exp $

COMMENT=	library to determine file type
V=		5.00
DISTNAME= 	file-${V}
PKGNAME=	libmagic-${V}
SHARED_LIBS=	magic	2.0
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
