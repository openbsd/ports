# $OpenBSD: Makefile,v 1.9 2002/03/07 09:55:49 kevlo Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-3.9
CATEGORIES=	devel
NEED_VERSION=	1.508

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
	@strip ${PREFIX}/bin/{pcregrep,pcretest}

.include <bsd.port.mk>
