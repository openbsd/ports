# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.15
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-File-BaseDir \
			misc/shared-mime-info
REGRESS_DEPENDS=	devel/p5-File-DesktopEntry

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
