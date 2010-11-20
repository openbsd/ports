# $OpenBSD: Makefile,v 1.3 2010/11/20 19:56:51 espie Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.22
CATEGORIES=		textproc

MODULES=		cpan
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		security/p5-Authen-SASL \
			security/p5-IO-Socket-SSL

.include <bsd.port.mk>
