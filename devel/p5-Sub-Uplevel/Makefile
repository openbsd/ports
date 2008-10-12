# $OpenBSD: Makefile,v 1.7 2008/10/12 20:44:12 jasper Exp $

COMMENT= 	Perl library for manipulating frame stack

MODULES=	cpan
DISTNAME=	Sub-Uplevel-0.2002
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

MAKE_ENV=	AUTHOR_TESTING=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
