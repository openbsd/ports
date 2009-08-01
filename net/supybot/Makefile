# $OpenBSD: Makefile,v 1.6 2009/08/01 20:39:08 fgsch Exp $

COMMENT =	cross-platform IRC bot written in Python

MODPY_EGG_VERSION = 0.83.4.1
DISTNAME =	Supybot-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	net devel

HOMEPAGE =	http://supybot.com/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=supybot/}

MODULES =	lang/python

NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supybot
	${INSTALL_DATA} ${WRKSRC}/docs/[A-Z]* ${PREFIX}/share/doc/supybot
	${INSTALL_MAN} ${WRKSRC}/docs/man/* ${PREFIX}/man/man1

.include <bsd.port.mk>
