# $OpenBSD: Makefile,v 1.5 2009/10/13 20:25:24 pirofti Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby interface to openssl

DISTNAME=		ezcrypto-0.7.2
PKGNAME=		ruby-${DISTNAME}
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
