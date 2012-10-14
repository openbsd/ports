# $OpenBSD: Makefile,v 1.10 2012/10/14 20:44:06 jcs Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
REVISION=	5
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	net/pidgin,-libpurple>=2.0.0

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
