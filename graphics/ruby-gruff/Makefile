# $OpenBSD: Makefile,v 1.7 2010/11/17 08:05:16 espie Exp $

COMMENT=		library for making beautiful graphs

DISTNAME=		gruff-0.3.4
REVISION =      	1
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
RUN_DEPENDS=		graphics/ruby-rmagick,${FLAVOR} \
			devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS=	rake

pre-regress:
	@mkdir -p ${WRKSRC}/test/output

.include <bsd.port.mk>
