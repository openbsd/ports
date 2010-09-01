# $OpenBSD: Makefile,v 1.12 2010/09/01 09:17:42 sthen Exp $

COMMENT=	library to create disk based hashtables
DISTNAME=	dbh-1.0.24
REVISION=	0
CATEGORIES=	databases
SHARED_LIBS +=	dbh                  1.0      # .1.0

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dbh/}

HOMEPAGE=	http://dbh.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
