# $OpenBSD: Makefile,v 1.2 2001/09/24 19:18:15 naddy Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-0.2.2
CATEGORIES=     	security devel
NEED_VERSION=		1.427

HOMEPAGE=		http://www.gnupg.org/gpgme.html

MAINTAINER=		Damien Couderc <couderc.damien@wanadoo.fr>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/pub/gcrypt/alpha/gpgme/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		gpg::security/gnupg
RUN_DEPENDS=		${BUILD_DEPENDS}

.include <bsd.port.mk>
