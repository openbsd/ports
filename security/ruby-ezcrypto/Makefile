# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:18 jeremy Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to openssl

DISTNAME=		ezcrypto-0.7.2
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES=		security

HOMEPAGE=		http://rubyforge.org/projects/ezcrypto/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

NO_REGRESS=		Yes

.include <bsd.port.mk>
