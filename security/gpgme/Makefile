# $OpenBSD: Makefile,v 1.6 2002/03/17 21:33:08 couderc Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-0.3.4
CATEGORIES=     	security devel
NEED_VERSION=		1.508

HOMEPAGE=		http://www.gnupg.org/gpgme.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/pub/gcrypt/alpha/gpgme/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-gpgsm
CONFIGURE_ENV=		MAKEINFO="makeinfo --no-split"

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::security/gnupg

pre-build:
	@rm -f ${WRKSRC}/doc/gpgme.info*

.include <bsd.port.mk>
