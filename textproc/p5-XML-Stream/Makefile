# $OpenBSD: Makefile,v 1.2 2010/10/19 07:54:25 espie Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.22
CATEGORIES=		textproc

MODULES=		cpan
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::security/p5-Authen-SASL \
			::security/p5-IO-Socket-SSL

.include <bsd.port.mk>
