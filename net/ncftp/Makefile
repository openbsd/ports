# $OpenBSD: Makefile,v 1.9 2000/04/21 14:50:51 kevlo Exp $

DISTNAME=       	ncftp-2.4.3
CATEGORIES=		net
NEED_VERSION=		 1.230
MASTER_SITES=		ftp://ftp.ncftp.com/ncftp/

MAINTAINER=		shinobi@monkey.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    	intl::devel/gettext
GNU_CONFIGURE=		Yes
FAKE=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ncftp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ncftp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
