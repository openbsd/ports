# $OpenBSD: Makefile,v 1.4 2005/12/04 17:21:09 sturm Exp $

COMMENT=	"error codes for GnuPG related software"

DISTNAME=	libgpg-error-1.1
CATEGORIES=	security devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/libgpg-error/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/libgpg-error/ \
		http://sunsite.dk/pub/security/gcrypt/libgpg-error/ \
		http://ftp.linux.it/pub/mirrors/gnupg/libgpg-error/

MODULES=	devel/gettext

USE_LIBTOOL=	Yes

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
