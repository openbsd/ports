# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:52 sthen Exp $

COMMENT=		use the freedesktop Base Directory Specification

DISTNAME=		File-BaseDir-0.08
CATEGORIES=		devel
REVISION=		0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-IPC-System-Simple \
			x11/xdg-user-dirs-gtk

TEST_DEPENDS=		sysutils/p5-File-Which

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
