# $OpenBSD: Makefile,v 1.2 2008/10/01 21:54:55 sthen Exp $

COMMENT =		module signature file manipulation

DISTNAME =		Module-Signature-0.55
PKGNAME =		${DISTNAME}p0

CATEGORIES =		security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::security/gnupg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/p5-Module-Signature
.for f in *.pub
	${INSTALL_DATA} ${WRKDIST}/${f} ${PREFIX}/share/p5-Module-Signature
.endfor

.include <bsd.port.mk>
