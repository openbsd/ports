# $OpenBSD: Makefile,v 1.6 2009/08/29 22:14:43 kurt Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB protocol plugin for Pidgin

DISTNAME=	pidgin-icb-20070505
PKGNAME=	${DISTNAME}p3
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
