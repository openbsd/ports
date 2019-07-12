# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:52 sthen Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09008
CATEGORIES =	misc
REVISION =	2

# Perl
PERMIT_PACKAGE =		Yes

WANTLIB += c perl

BUILD_DEPENDS =	devel/p5-Module-Install-AuthorTests \
		devel/p5-Module-Install-Repository \
		devel/p5-Module-Install-XSUtil

CONFIGURE_STYLE =	modinst

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
