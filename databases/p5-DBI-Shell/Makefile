# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:24 ajacoutot Exp $

COMMENT=	interactive command shell for the DBI

MODULES=	cpan
DISTNAME=	DBI-Shell-11.95
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		devel/p5-IO-Tee \
		textproc/p5-Text-Reform

.include <bsd.port.mk>
