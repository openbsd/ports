# $OpenBSD: Makefile,v 1.8 2009/01/24 15:29:45 bernd Exp $

COMMENT=		Ruby timezone library

VERSION=		0.3.12
DISTNAME=		tzinfo-${VERSION}
PKGNAME=		ruby-tzinfo-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://tzinfo.rubyforge.org/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=tzinfo/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
