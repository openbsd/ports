# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:54 sthen Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.29
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-File-BaseDir>=0.03 \
			devel/p5-File-DesktopEntry>=0.04 \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-Path-Tiny

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
