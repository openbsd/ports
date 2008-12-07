# $OpenBSD: Makefile,v 1.1.1.1 2008/12/07 22:03:28 okan Exp $

COMMENT =		interactive, multi-threaded text mode web browser

DISTNAME =		retawq-0.2.6c
CATEGORIES =		www

HOMEPAGE =		http://retawq.sourceforge.net
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=retawq/}

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes 
PERMIT_DISTFILES_CDROM = Yes 
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pthread ncurses

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS = 	--enable-ipv6

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docu/retawq.1 ${WRKSRC}/docu/example-config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/retawq ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docu/retawq.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/retawq
	${INSTALL_DATA} ${WRKSRC}/docu/*html \
		${PREFIX}/share/doc/retawq
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/retawq
	${INSTALL_DATA} ${WRKSRC}/docu/example-config \
		${PREFIX}/share/examples/retawq

.include <bsd.port.mk>
