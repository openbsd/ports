# $OpenBSD: Makefile,v 1.7 2013/03/11 11:23:57 espie Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09006
REVISION =	0
CATEGORIES =	misc

# Perl
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
