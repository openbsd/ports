# $OpenBSD: Makefile,v 1.19 2000/03/24 22:11:50 espie Exp $

DISTNAME=	screen-3.9.5
CATEGORIES=	misc
NEED_VERSION=	1.218
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
FAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen

.include <bsd.port.mk>
