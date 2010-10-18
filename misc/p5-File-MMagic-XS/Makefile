# $OpenBSD: Makefile,v 1.3 2010/10/18 20:52:09 espie Exp $

COMMENT =	guess file type with XS (a la mod_mime_magic)
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	File-MMagic-XS-0.09002
REVISION=	0
CATEGORIES =	misc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
