# $OpenBSD: Makefile,v 1.10 2019/05/05 22:10:54 cwen Exp $

COMMENT=		use the freedesktop Base Directory Specification

DISTNAME=		File-BaseDir-0.08
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*
CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-IPC-System-Simple \
			x11/xdg-user-dirs-gtk

TEST_DEPENDS=		sysutils/p5-File-Which

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
