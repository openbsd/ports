# $OpenBSD: Makefile,v 1.11 2004/06/26 07:35:09 xsa Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-0.3.15
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

RUN_DEPENDS=		:gnupg->=1.2.*:security/gnupg
BUILD_DEPENDS=		${RUN_DEPENDS}

pre-build:
	@rm -f ${WRKSRC}/doc/gpgme.info*

.include <bsd.port.mk>
