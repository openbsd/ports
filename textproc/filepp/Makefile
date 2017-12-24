# $OpenBSD: Makefile,v 1.9 2017/12/24 08:10:56 landry Exp $

COMMENT =	cpp-like generic file pre-processor

DISTNAME =	filepp-1.8.0
REVISION =	3
CATEGORIES =	textproc devel
MASTER_SITES =	http://www-users.york.ac.uk/~dm26/filepp/

HOMEPAGE =	http://www-users.york.ac.uk/~dm26/filepp/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu dest
NO_BUILD =		Yes
PKG_ARCH =		*
TEST_TARGET =	fulltest

post-configure:
	sed -i 's,$${DESTDIR}${TRUEPREFIX},${TRUEPREFIX},g' ${WRKSRC}/filepp

.include <bsd.port.mk>
