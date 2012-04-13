# $OpenBSD: Makefile,v 1.2 2012/04/13 14:21:45 ajacoutot Exp $

COMMENT =	ssl/ssh multiplexer

VERSION =	1.10
DISTNAME =	sslh-${VERSION}
CATEGORIES =	security net
REVISION =	0

HOMEPAGE =	http://www.rutschle.net/tech/sslh.shtml

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	http://www.rutschle.net/tech/ \
		http://mirror2.openwrt.org/sources/

WANTLIB =	c wrap

MAKE_FLAGS =	CC="${CC}"
NO_REGRESS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sslh
	${INSTALL_DATA} ${WRKSRC}/sslh.8 ${PREFIX}/man/man8
.for p in sslh-fork sslh-select
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
.endfor

.include <bsd.port.mk>
