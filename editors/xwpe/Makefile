# $OpenBSD: Makefile,v 1.16 2001/06/20 01:43:16 pvalchev Exp $

COMMENT=	"powerful programming editor"

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.identicalsoftware.com/xwpe/ 
MASTER_SITE_SUBDIR= apps/editors/X

MAINTAINER=	Yannick Cote <yanick@fries.net>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I/usr/X11R6/include'
FAKE_FLAGS=	${MAKE_FLAGS} prefix=${WRKINST}${PREFIX}
#SEPARATE_BUILD=	simple

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
