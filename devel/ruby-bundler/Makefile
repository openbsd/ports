# $OpenBSD: Makefile,v 1.14 2019/07/12 20:45:58 sthen Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.15.1
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		http://gembundler.com/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

.if !defined(FLAVOR) || ${FLAVOR:L:Mruby26}
# Ruby 2.6 includes bundler binaries
PLIST =		${PKGDIR}/PLIST.nobin
.endif

RUN_DEPENDS=		security/sudo

.include <bsd.port.mk>
