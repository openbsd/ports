# $OpenBSD: Makefile,v 1.25 2000/10/22 14:03:55 espie Exp $

DISTNAME=	blackbox-0.61.0
CATEGORIES=	x11
NEED_VERSION=	1.310
MASTER_SITES=	ftp://portal.alug.org/pub/blackbox/0.6x.x/ \
		ftp://ftp.dti.ad.jp/pub/X/blackbox/0.6x.x/

HOMEPAGE=	http://blackbox.alug.org/

MAINTAINER=	Bruno Rohee <rohee@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

DOCS=	AUTHORS ChangeLog ChangeLog-0.40.x ChangeLog-0.50.x \
	ChangeLog-0.51.x ChangeLog-0.60.x README README.bsetbg

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
