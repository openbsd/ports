# $OpenBSD: Makefile,v 1.18 2000/03/04 22:01:41 espie Exp $

DISTNAME=	screen-3.9.5
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NEED_VERSION=	1.218
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
FAKE=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen

.include <bsd.port.mk>
