# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:19 espie Exp $

COMMENT =		simple starter kit for any module

MODULES =		cpan
DISTNAME =		Module-Starter-1.54
REVISION =		1
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE
USE_GROFF =		Yes

MAINTAINER =		James Wright <jamesw@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
