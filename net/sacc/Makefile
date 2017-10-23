# $OpenBSD: Makefile,v 1.1.1.1 2017/10/23 21:42:33 bcallah Exp $

COMMENT =	simple console gopher client
DISTNAME =	sacc-0.0.0.20171022
CATEGORIES =	net

HOMEPAGE =	gopher://bitreich.org/1/scm/sacc
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses

MASTER_SITES =	https://devio.us/~bcallah/source/

# To open HTML and other links sacc doesn't understand.
RUN_DEPENDS =	devel/xdg-utils

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sacc ${PREFIX}/bin

.include <bsd.port.mk>
