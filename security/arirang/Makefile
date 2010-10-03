# $OpenBSD: Makefile,v 1.17 2010/10/03 07:12:18 landry Exp $

COMMENT =	powerful webserver security scanner for network

DISTNAME =	arirang-2.00
CATEGORIES = 	security

MASTER_SITES =	http://monkey.org/~pilot/arirang/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/cgi-scanners/}

HOMEPAGE =	http://www.monkey.org/~pilot

MAINTAINER =	Jung <moorang@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


CONFIGURE_STYLE =	extconf

MODULES =	lang/ruby
WANTLIB =	c crypto ssl
LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}
NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/scanrule/*.uxe ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/script/*.rb ${PREFIX}/share/arirang

.include <bsd.port.mk>
