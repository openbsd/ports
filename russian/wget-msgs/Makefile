# $OpenBSD: Makefile,v 1.1.1.1 1999/07/05 16:07:15 form Exp $

PKGNAME=	wget-msgs-1.5.3-ru
CATEGORIES=	russian net

MAINTAINER=	form@OpenBSD.ORG

BUILD_DEPENDS=	msgfmt:${PORTSDIR}/devel/gettext
RUN_DEPENDS=	wget:${PORTSDIR}/net/wget

NO_CHECKSUM=	yes
NO_WRKSUBDIR=	yes

do-fetch:

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${FILESDIR}/wget.ru.po ${WRKDIR}

do-build:
	cd ${WRKDIR}; msgfmt -o wget.mo wget.ru.po

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/ru/LC_MESSAGES
	${INSTALL_DATA} ${WRKDIR}/wget.mo ${PREFIX}/share/locale/ru/LC_MESSAGES

.include <bsd.port.mk>
