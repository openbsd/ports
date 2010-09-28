# $OpenBSD: Makefile,v 1.5 2010/09/28 20:12:17 jeremy Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.4
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
CATEGORIES=		graphics

HOMEPAGE=		http://nubyonrails.com/pages/gruff/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::graphics/ruby-rmagick

GEM_SKIPDEPENDS=	hoe

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-hoe
MODRUBY_REGRESS=	rake

pre-regress:
	@mkdir -p ${WRKSRC}/test/output

.include <bsd.port.mk>
