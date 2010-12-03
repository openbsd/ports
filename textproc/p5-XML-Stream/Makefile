# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:50 ajacoutot Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.22
REVISION=		0
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
