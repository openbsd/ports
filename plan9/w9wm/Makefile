# $OpenBSD: Makefile,v 1.1.1.1 2000/08/18 19:05:26 brad Exp $

DISTNAME=	w9wm-0.1
CATEGORIES=	plan9
NEED_VERSION=	1.319
MASTER_SITES=	http://inferno.cs.univ-paris8.fr/~drieu/w9wm/

MAINTAINER=	wyodlows@nj.devry.edu

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake

post-extract:
	@cd ${WRKSRC} && mv -f 9wm.man w9wm.man

.include <bsd.port.mk>
