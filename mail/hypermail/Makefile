# $NetBSD: Makefile,v 1.3 2000/01/10 14:35:22 hubertf Exp $
# $FreeBSD: ports/www/hypermail/Makefile,v 1.4 1999/08/31 02:42:53 peter Exp $
# $OpenBSD: Makefile,v 1.5 2000/10/22 15:42:32 espie Exp $

DISTNAME=	hypermail-2b30
CATEGORIES=	mail www
NEED_VERSION=	1.305
MASTER_SITES=	http://www.landfield.com/hypermail/dist/ \
		ftp://ftp.landfield.com/hypermail/ \
		ftp://ftp.faqs.org/hypermail/

HOMEPAGE=	http://www.landfield.com/hypermail/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-htmldir=${PREFIX}/share/doc/hypermail

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hypermail

.include <bsd.port.mk>
