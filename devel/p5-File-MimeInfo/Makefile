# $OpenBSD: Makefile,v 1.4 2008/12/05 10:43:30 simon Exp $

COMMENT=		determine file types

DISTNAME=		File-MimeInfo-0.15
PKGNAME=		p5-${DISTNAME}p0
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
