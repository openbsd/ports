# $OpenBSD: Makefile,v 1.2 2000/02/10 23:14:34 espie Exp $

PKGNAME=	wget-msgs-1.5.3-ru
CATEGORIES=	russian net
NEED_VERSION=	1.191

MAINTAINER=	form@OpenBSD.ORG

BUILD_DEPENDS=	msgfmt:${PORTSDIR}/devel/gettext
RUN_DEPENDS=	wget:${PORTSDIR}/net/wget

NO_CHECKSUM=	yes
WRKDIST=	${WRKDIR}

do-fetch:

do-extract:
	@mkdir -p ${WRKDIR}
	@cp ${FILESDIR}/wget.ru.po ${WRKDIR}

do-build:
	cd ${WRKDIR}; msgfmt -o wget.mo wget.ru.po

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/ru/LC_MESSAGES
	${INSTALL_DATA} ${WRKDIR}/wget.mo ${PREFIX}/share/locale/ru/LC_MESSAGES

.include <bsd.port.mk>
