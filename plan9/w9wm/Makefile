# $OpenBSD: Makefile,v 1.7 2002/03/21 21:25:50 espie Exp $

COMMENT=	"hacked 9wm, with support for virtual screens"

DISTNAME=	w9wm-0.4.1
CATEGORIES=	plan9
NEED_VERSION=	1.515
HOMEPAGE=	http://inferno.cs.univ-paris8.fr/~drieu/w9wm/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= w9wm

CONFIGURE_STYLE= imake

post-extract:
	@cd ${WRKSRC} && mv -f w9wm.1 w9wm.man

.include <bsd.port.mk>
