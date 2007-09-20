# $OpenBSD: Makefile,v 1.3 2007/09/20 12:50:48 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to openssl

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

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=ezcrypto/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
