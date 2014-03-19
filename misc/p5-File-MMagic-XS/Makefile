# $OpenBSD: Makefile,v 1.8 2014/03/19 09:25:06 jasper Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09007
CATEGORIES =	misc

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

BUILD_DEPENDS =	devel/p5-Module-Install-AuthorTests \
		devel/p5-Module-Install-Repository \
		devel/p5-Module-Install-XSUtil

MAKE_ENV +=	TEST_POD=1

# Remove ancient copies of bundled modules.
post-extract:
	rm -fr ${WRKSRC}/inc/

.include <bsd.port.mk>
