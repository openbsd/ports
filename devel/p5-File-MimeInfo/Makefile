# $OpenBSD: Makefile,v 1.13 2015/03/31 13:33:15 benoit Exp $

COMMENT=		determine file types

DISTNAME =		File-MimeInfo-0.27
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-File-DesktopEntry

.include <bsd.port.mk>
