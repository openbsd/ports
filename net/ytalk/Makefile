# $OpenBSD: Makefile,v 1.11 2000/03/24 22:11:55 espie Exp $

DISTNAME=	ytalk-3.1.1
CATEGORIES=	net
NEED_VERSION=	1.216
MASTER_SITES=	http://www.iagora.com/~espel/ytalk/


MAINTAINER=	espie@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes
# No gnu-configure for now, need to set up DESTDIR in prefix/etc for fake
# to work.
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS= --prefix='$${DESTDIR}${PREFIX}' \
		--sysconfdir='$${DESTDIR}/etc'

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/lib/ytalk/ytalkrc.sample

.include <bsd.port.mk>
