# $OpenBSD: Makefile,v 1.3 2010/06/01 09:46:48 kevlo Exp $

COMMENT=	implementation of the OAuth protocol

DISTNAME=	Net-OAuth-0.25

CATEGORIES=	net

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES=	cpan
RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Universal-require \
		::security/p5-Digest-HMAC \
		::www/p5-URI
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
