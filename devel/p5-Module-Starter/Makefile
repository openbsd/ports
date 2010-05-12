# $OpenBSD: Makefile,v 1.1.1.1 2010/05/12 18:47:03 jamesw Exp $

COMMENT =		A simple starter kit for any module

MODULES =		cpan
DISTNAME =		Module-Starter-1.54
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
