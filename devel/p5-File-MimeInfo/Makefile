# $OpenBSD: Makefile,v 1.10 2014/03/24 08:41:20 jasper Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.22
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
