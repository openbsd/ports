# $OpenBSD: Makefile,v 1.11 2014/07/13 21:59:15 giovanni Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.26
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
TEST_DEPENDS=		devel/desktop-file-utils \
			devel/p5-File-DesktopEntry

.include <bsd.port.mk>
