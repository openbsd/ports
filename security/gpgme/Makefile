# $OpenBSD: Makefile,v 1.4 2001/11/10 15:00:49 espie Exp $

COMMENT=		"GnuPG Made Easy"

DISTNAME=		gpgme-0.2.3
CATEGORIES=     	security devel
NEED_VERSION=		1.489

HOMEPAGE=		http://www.gnupg.org/gpgme.html

MAINTAINER=		Damien Couderc <couderc.damien@wanadoo.fr>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gnupg.org/pub/gcrypt/alpha/gpgme/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::security/gnupg

.include <bsd.port.mk>
