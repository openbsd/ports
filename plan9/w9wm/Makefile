# $OpenBSD: Makefile,v 1.5 2001/05/06 03:05:15 lebel Exp $

COMMENT=	"hacked 9wm, with support for virtual screens"

DISTNAME=	w9wm-0.2
CATEGORIES=	plan9
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= w9wm

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

post-extract:
	@cd ${WRKSRC} && mv -f w9wm.1 w9wm.man

.include <bsd.port.mk>
