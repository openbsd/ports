# $OpenBSD: Makefile,v 1.5 2010/07/13 19:46:12 sthen Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.15
REVISION=		0
CATEGORIES=		devel

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
