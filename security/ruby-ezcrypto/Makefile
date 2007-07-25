# $OpenBSD: Makefile,v 1.1.1.1 2007/07/25 08:49:58 dlg Exp $

SHARED_ONLY=		Yes

COMMENT=		"Ruby interface to openssl"

VERSION=		0.7
DISTNAME=		ezcrypto-${VERSION}
PKGNAME=		ruby-ezcrypto-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://rubyforge.org/projects/ezcrypto/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://rubyforge.org/frs/download.php/13088/

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
