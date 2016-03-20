# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:23 naddy Exp $

COMMENT=		determine file types

DISTNAME =		File-MimeInfo-0.27
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-File-DesktopEntry

.include <bsd.port.mk>
