# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:58 sthen Exp $

COMMENT =	cpp-like generic file pre-processor

DISTNAME =	filepp-1.8.0
REVISION =	3
CATEGORIES =	textproc devel
MASTER_SITES =	http://www-users.york.ac.uk/~dm26/filepp/

HOMEPAGE =	http://www-users.york.ac.uk/~dm26/filepp/

# GPLv2+
PERMIT_PACKAGE =	Yes

CONFIGURE_STYLE =	gnu dest
NO_BUILD =		Yes
PKG_ARCH =		*
TEST_TARGET =	fulltest

post-configure:
	sed -i 's,$${DESTDIR}${TRUEPREFIX},${TRUEPREFIX},g' ${WRKSRC}/filepp

.include <bsd.port.mk>
