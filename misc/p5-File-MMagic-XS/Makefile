# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:49 naddy Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09008
CATEGORIES =	misc
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c perl

BUILD_DEPENDS =	devel/p5-Module-Install-AuthorTests \
		devel/p5-Module-Install-Repository \
		devel/p5-Module-Install-XSUtil

MAKE_ENV +=	TEST_POD=1

# Remove ancient copies of bundled modules.
post-extract:
	rm -fr ${WRKSRC}/inc/

.include <bsd.port.mk>
