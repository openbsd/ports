# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 09:59:25 bernd Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.1
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		lang/ruby graphics

HOMEPAGE=		http://nubyonrails.com/pages/gruff/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=gruff/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::graphics/ruby-rmagick

GEM_SKIPDEPENDS=	hoe

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-hoe

do-regress:
	@mkdir -p ${WRKSRC}/test/output
	@cd ${WRKSRC} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
