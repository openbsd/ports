# $OpenBSD: Makefile,v 1.15 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT=	error codes for GnuPG related software

DISTNAME=	libgpg-error-1.10
CATEGORIES=	security devel

SHARED_LIBS=	gpg-error	3.1 # .7.0

HOMEPAGE=	http://www.gnupg.org/related_software/libgpg-error.en.html

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/libgpg-error/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/libgpg-error/ \
		http://sunsite.dk/pub/security/gcrypt/libgpg-error/ \
		http://ftp.linux.it/pub/mirrors/gnupg/libgpg-error/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext


SEPARATE_BUILD=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
