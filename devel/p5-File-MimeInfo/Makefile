# $OpenBSD: Makefile,v 1.15 2016/07/11 08:19:59 sthen Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.27
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-File-BaseDir \
			devel/p5-File-DesktopEntry \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-File-DesktopEntry

.include <bsd.port.mk>
