# $OpenBSD: Makefile,v 1.13 2017/08/04 09:27:03 bluhm Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09008
CATEGORIES =	misc
REVISION =	1

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c perl

BUILD_DEPENDS =	devel/p5-Module-Install-AuthorTests \
		devel/p5-Module-Install-Repository \
		devel/p5-Module-Install-XSUtil

CONFIGURE_STYLE =	modinst

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
