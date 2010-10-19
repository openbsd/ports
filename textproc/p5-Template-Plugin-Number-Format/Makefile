# $OpenBSD: Makefile,v 1.5 2010/10/19 07:54:24 espie Exp $

COMMENT= 	plugin/filter interface to Number::Format

MODULES=	cpan
DISTNAME=	Template-Plugin-Number-Format-1.02
CATEGORIES=	textproc
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Number-Format \
		::textproc/p5-Template

.include <bsd.port.mk>
