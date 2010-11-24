# $OpenBSD: Makefile,v 1.19 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	powerful webserver security scanner for network

DISTNAME =	arirang-2.00
REVISION =	0
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


CONFIGURE_STYLE =	ruby extconf

MODULES =	lang/ruby
WANTLIB =	crypto ssl
MODRUBY_WANTLIB_m = No
NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arirang ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/scanrule/*.uxe ${PREFIX}/share/arirang
	${INSTALL_DATA} ${WRKSRC}/script/*.rb ${PREFIX}/share/arirang

.include <bsd.port.mk>
