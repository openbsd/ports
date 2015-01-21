# $OpenBSD: Makefile,v 1.12 2015/01/21 14:27:57 sthen Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.26
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-File-DesktopEntry

.include <bsd.port.mk>
