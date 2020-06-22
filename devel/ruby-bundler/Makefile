# $OpenBSD: Makefile,v 1.15 2020/06/22 10:25:29 sthen Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.15.1
REVISION=		1
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
