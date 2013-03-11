# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:17 espie Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.15
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
TEST_DEPENDS=	devel/p5-File-DesktopEntry

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
