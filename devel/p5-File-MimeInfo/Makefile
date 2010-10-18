# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:00 espie Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.15
REVISION=		0
CATEGORIES=		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-File-BaseDir \
			::misc/shared-mime-info
REGRESS_DEPENDS=	::devel/p5-File-DesktopEntry

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
