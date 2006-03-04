# $OpenBSD: Makefile,v 1.6 2006/03/04 15:10:31 sturm Exp $

COMMENT=	"error codes for GnuPG related software"

DISTNAME=	libgpg-error-1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security devel
SHARED_LIBS=	gpg-error	1.4
MODGNU_SHARED_LIBS=gpg-error	''
LIBgpg-error_ALIAS=gpg_error

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
