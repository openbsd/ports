# $OpenBSD: Makefile,v 1.13 2019/04/29 00:37:36 jeremy Exp $

COMMENT=		ruby application dependency manager

DISTNAME=		bundler-1.15.1
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		http://gembundler.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

.if !defined(FLAVOR) || ${FLAVOR:L:Mruby26}
# Ruby 2.6 includes bundler binaries
PLIST =		${PKGDIR}/PLIST.nobin
.endif

RUN_DEPENDS=		security/sudo

.include <bsd.port.mk>
