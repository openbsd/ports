# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:35 ajacoutot Exp $

COMMENT=		debugging aid based on comments

MODULES=		cpan
DISTNAME=		Smart-Comments-v1.0.2
PKGNAME=		p5-Smart-Comments-1.0.2
REVISION=		2
CATEGORIES=		devel
USE_GROFF =		Yes

CPAN_AUTHOR=	DCONWAY

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
