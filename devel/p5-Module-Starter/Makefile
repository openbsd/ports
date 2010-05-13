# $OpenBSD: Makefile,v 1.2 2010/05/13 06:43:00 jamesw Exp $

COMMENT =		simple starter kit for any module

MODULES =		cpan
DISTNAME =		Module-Starter-1.54
PKGNAME =		${DISTNAME}p0
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE

MAINTAINER =		James Wright <jamesw@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
