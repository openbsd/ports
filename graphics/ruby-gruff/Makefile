# $OpenBSD: Makefile,v 1.2 2008/06/14 23:51:46 landry Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.1
PKGNAME=		ruby-${DISTNAME}p0
CATEGORIES=		graphics

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
