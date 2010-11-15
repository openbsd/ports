# $OpenBSD: Makefile,v 1.5 2010/11/15 19:46:03 espie Exp $

COMMENT=		use the freedesktop Base Directory Specification

DISTNAME=		File-BaseDir-0.03
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
