# $OpenBSD: Makefile,v 1.3 2004/12/27 13:28:34 alek Exp $

COMMENT=	"error codes for GnuPG related software"

DISTNAME=	libgpg-error-0.7
CATEGORIES=	security devel

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	ftp://ftp.gnupg.org/gcrypt/alpha/libgpg-error/ \
		ftp://gd.tuwien.ac.at/privacy/gnupg/alpha/libgpg-error/ \
		http://ftp.planetmirror.com/pub/gnupg/alpha/libgpg-error/ \
		http://sunsite.dk/pub/security/gcrypt/alpha/libgpg-error/ \
		http://ftp.linux.it/pub/mirrors/gnupg/alpha/libgpg-error/

MODULES=	devel/gettext

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
