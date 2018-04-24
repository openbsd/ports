# $OpenBSD: Makefile,v 1.2 2018/04/24 16:25:20 solene Exp $

COMMENT =	simple console gopher client
DISTNAME =	sacc-v1.00
PKGNAME =	${DISTNAME:S/-v/-/}
EXTRACT_SUFX =	.tgz
CATEGORIES =	net

HOMEPAGE =	gopher://bitreich.org/1/scm/sacc
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses

MASTER_SITES =	ftp://bitreich.org/releases/sacc/

# To open HTML and other links sacc doesn't understand.
RUN_DEPENDS =	devel/xdg-utils

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sacc ${PREFIX}/bin

.include <bsd.port.mk>
