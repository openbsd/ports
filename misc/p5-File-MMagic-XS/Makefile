# $OpenBSD: Makefile,v 1.5 2011/03/17 13:31:24 jasper Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09006
CATEGORIES =	misc

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
