# $OpenBSD: Makefile,v 1.3 2010/10/18 17:06:08 espie Exp $

COMMENT=	interactive command shell for the DBI

MODULES=	cpan
DISTNAME=	DBI-Shell-11.95
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBI \
		::devel/p5-IO-Tee \
		::textproc/p5-Text-Reform

.include <bsd.port.mk>
