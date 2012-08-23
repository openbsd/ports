# $OpenBSD: Makefile,v 1.6 2012/08/23 15:50:05 sthen Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09006
REVISION =	0
CATEGORIES =	misc

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB += c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
