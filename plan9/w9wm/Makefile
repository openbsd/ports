# $OpenBSD: Makefile,v 1.4 2001/01/02 20:14:05 naddy Exp $

DISTNAME=	w9wm-0.2
CATEGORIES=	plan9
NEED_VERSION=	1.330
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
