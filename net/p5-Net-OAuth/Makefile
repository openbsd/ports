# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:53 espie Exp $

COMMENT=	implementation of the OAuth protocol

DISTNAME=	Net-OAuth-0.25
REVISION=	0

CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
RUN_DEPENDS=	devel/p5-Class-Accessor \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Universal-require \
		security/p5-Digest-HMAC \
		www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
