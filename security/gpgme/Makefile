# $OpenBSD: Makefile,v 1.9 2002/12/15 14:48:09 couderc Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-0.3.14
CATEGORIES=     	security devel

HOMEPAGE=		http://www.gnupg.org/gpgme.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/gcrypt/gpgme/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gpgsm
CONFIGURE_ENV=		MAKEINFO="makeinfo --no-split"

BUILD_DEPENDS=		:gnupg->=1.2.*:security/gnupg
RUN_DEPENDS=		${BUILD_DEPENDS}

pre-build:
	@rm -f ${WRKSRC}/doc/gpgme.info*

.include <bsd.port.mk>
