# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:31 ajacoutot Exp $

COMMENT=		use the freedesktop Base Directory Specification

DISTNAME=		File-BaseDir-0.03
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

CPAN_AUTHOR=		PARDUS

MAKE_ENV+=		TEST_POD=1

.include <bsd.port.mk>
