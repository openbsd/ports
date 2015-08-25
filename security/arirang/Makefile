# $OpenBSD: Makefile,v 1.31 2015/08/25 00:50:39 jeremy Exp $

COMMENT =	powerful webserver security scanner for network

DISTNAME =	arirang-2.03
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	security
REVISION =	0

MASTER_SITES =	http://monkey.org/~pilot/arirang/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/cgi-scanners/}

HOMEPAGE =	http://www.monkey.org/~pilot

MAINTAINER =	Jung Lee <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODRUBY_HANDLE_FLAVORS =	No
MODRUBY_REV =		1.8
CONFIGURE_STYLE =	ruby extconf

MODULES =	lang/ruby
WANTLIB =	crypto ssl
NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/scanrule/*.uxe ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/script/*.rb ${PREFIX}/share/arirang

.include <bsd.port.mk>
