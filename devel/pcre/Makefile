# $OpenBSD: Makefile,v 1.7 2001/07/06 19:34:03 jsyn Exp $

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

post-install:
	@strip ${PREFIX}/bin/pcregrep

.include <bsd.port.mk>
