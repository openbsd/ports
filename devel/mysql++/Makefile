# $OpenBSD: Makefile,v 1.1.1.1 2001/04/02 15:13:05 wilfried Exp $

COMMENT=		'C++ API for MySQL'

DISTNAME=		mysql++-1.7.8
CATEGORIES=		devel
NEED_VERSION=		1.380

HOMEPAGE=		http://www.mysql.com/downloads/api-mysql++.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/mysql++/ \
			ftp://ftp.mysql.com/mysql++/

BUILD_DEPENDS=		automake::devel/automake
LIB_DEPENDS=		mysqlclient::databases/mysql

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu autoconf

pre-configure:
	@cd ${WRKSRC} && automake -a

.include <bsd.port.mk>
