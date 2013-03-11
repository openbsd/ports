# $OpenBSD: Makefile,v 1.6 2013/03/11 02:52:06 espie Exp $

COMMENT=	interactive command shell for the DBI

MODULES=	cpan
DISTNAME=	DBI-Shell-11.95
REVISION=	0
CATEGORIES=	databases
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	databases/p5-DBI \
		devel/p5-IO-Tee \
		textproc/p5-Text-Reform

.include <bsd.port.mk>
