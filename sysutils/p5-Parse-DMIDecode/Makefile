# $OpenBSD: Makefile,v 1.2 2010/10/19 07:43:01 espie Exp $

COMMENT =	interface to SMBIOS using dmidecode

MODULES =	cpan
DISTNAME =	Parse-DMIDecode-0.03
CATEGORIES =	sysutils

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

HOMEPAGE =	http://search.cpan.org/dist/Parse-DMIDecode/

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		NICOLAW
CONFIGURE_STYLE =	modbuild
CONFIGURE_ENV =		AUTOMATED_TESTING=Yes
USE_GROFF =	Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS =	${REGRESS_DEPENDS} \
		::sysutils/p5-File-Which \
		::devel/p5-Test-Deep
RUN_DEPENDS =	::sysutils/dmidecode \
		::sysutils/p5-File-Which

.include <bsd.port.mk>
