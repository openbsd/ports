# $OpenBSD: Makefile,v 1.9 2015/01/21 14:27:58 sthen Exp $

COMMENT =		simple starter kit for any module

MODULES =		cpan
DISTNAME =		Module-Starter-1.54
REVISION =		1
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE

MAINTAINER =		James Wright <jamesw@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
