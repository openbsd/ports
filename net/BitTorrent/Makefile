# $OpenBSD: Makefile,v 1.1.1.1 2003/08/21 03:39:57 jolan Exp $

COMMENT=	"cooperative file distribution system implemented in Python"
DISTNAME=	BitTorrent-3.2.1b
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://bitconjurer.org/BitTorrent/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# MIT
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	python

post-configure:
	@perl -pi -e \
		's,/usr/bin/env python,/usr/bin/env python${MODPY_VERSION},g' \
	${WRKBUILD}/bt*.py	

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/BitTorrent
	${INSTALL_DATA} ${WRKSRC}/{FAQ,README}.txt ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/BitTorrent

do-regress:
	cd ${WRKBUILD} && ${MODPY_BIN} ./bttest.py

.include <bsd.port.mk>
