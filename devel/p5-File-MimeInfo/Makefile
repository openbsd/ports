# $OpenBSD: Makefile,v 1.16 2017/03/16 15:31:09 giovanni Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.28
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
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
