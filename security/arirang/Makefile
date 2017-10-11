# $OpenBSD: Makefile,v 1.33 2017/10/11 23:27:38 jeremy Exp $

COMMENT =	powerful webserver security scanner for network

DISTNAME =	arirang-2.03
CATEGORIES =	security
REVISION =	2

MASTER_SITES =	http://monkey.org/~pilot/arirang/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/cgi-scanners/}

HOMEPAGE =	http://www.monkey.org/~pilot

MAINTAINER =	Jung Lee <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${SETENV} ${MAKE_ENV} ${RUBY} extconf.rb

MODULES =	lang/ruby
WANTLIB =	crypto ssl ${MODRUBY_WANTLIB}
NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/scanrule/*.uxe ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/script/*.rb ${PREFIX}/share/arirang

.include <bsd.port.mk>
