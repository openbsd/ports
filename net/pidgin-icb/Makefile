# $OpenBSD: Makefile,v 1.7 2010/07/12 22:07:41 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	http://nic.com.pl/~alek/pidgin-icb/

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:pidgin->=2.0.0:net/pidgin

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/icb-plugin.txt

.include <bsd.port.mk>
