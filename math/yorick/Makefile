# $OpenBSD: Makefile,v 1.1.1.1 2001/02/09 10:50:51 reinhard Exp $

DISTNAME=	yorick-1.4
CATEGORIES=	math devel
NEED_VERSION=	1.353

HOMEPAGE=	ftp://ftp-icf.llnl.gov/pub/Yorick/yorick-ad.html

MASTER_SITES=	ftp://ftp-icf.llnl.gov/pub/Yorick/

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
USE_X11=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/yorick.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/gist.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/Yorick/check.i ${PREFIX}/share/yorick/1.4

.include <bsd.port.mk>
