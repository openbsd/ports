# $OpenBSD: Makefile,v 1.23 2011/04/28 16:17:21 sthen Exp $

COMMENT =	powerful webserver security scanner for network

DISTNAME =	arirang-2.02
PKGNAME =	ruby-${DISTNAME}
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

MODRUBY_HANDLE_FLAVORS =	No
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
