# $OpenBSD: Makefile,v 1.6 2001/03/24 19:55:27 jakob Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-3.4
CATEGORIES=	devel
NEED_VERSION=	1.363

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pcre

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
