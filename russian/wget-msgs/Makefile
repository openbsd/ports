# $OpenBSD: Makefile,v 1.6 2000/04/11 01:39:30 espie Exp $

PKGNAME=	wget-msgs-1.5.3-ru
CATEGORIES=	russian net
NEED_VERSION=	 1.230

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	form@OpenBSD.ORG

BUILD_DEPENDS=	msgfmt::devel/gettext
RUN_DEPENDS=	wget::net/wget

NO_CHECKSUM=	Yes
FAKE=		Yes
WRKDIST=	${WRKDIR}
DISTFILES=

do-extract:
	@mkdir -p ${WRKDIR}
	@cp ${FILESDIR}/wget.ru.po ${WRKDIR}

do-build:
	cd ${WRKDIR}; msgfmt -o wget.mo wget.ru.po

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/ru/LC_MESSAGES
	${INSTALL_DATA} ${WRKDIR}/wget.mo ${PREFIX}/share/locale/ru/LC_MESSAGES

.include <bsd.port.mk>
