# $OpenBSD: Makefile,v 1.5 2009/03/24 18:14:10 jasper Exp $

COMMENT=	cross-platform IRC bot written in Python

DISTNAME=	Supybot-0.83.3
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	net devel

HOMEPAGE=	http://supybot.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=supybot/}

MODULES=	lang/python

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/supybot
	${INSTALL_DATA} ${WRKSRC}/docs/[A-Z]* ${PREFIX}/share/doc/supybot
	${INSTALL_DATA} ${WRKSRC}/docs/man/* ${PREFIX}/man/man1

.include <bsd.port.mk>
