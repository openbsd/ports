# $OpenBSD: Makefile,v 1.4 2002/05/15 17:58:49 espie Exp $

COMMENT=	"encrypt and decrypt AES files and streams"

DISTNAME=	ccrypt-1.2
CATEGORIES=	security
NEED_VERSION=	1.504

HOMEPAGE=	http://quasar.mathstat.uottawa.ca/~selinger/ccrypt/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=ccrypt/}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
