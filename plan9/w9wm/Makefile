# $OpenBSD: Makefile,v 1.9 2002/10/28 02:13:21 naddy Exp $

COMMENT=	"hacked 9wm, with support for virtual screens"

DISTNAME=	w9wm-0.4.1
CATEGORIES=	plan9

HOMEPAGE=	http://inferno.cs.univ-paris8.fr/~drieu/w9wm/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w9wm/}

CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

post-extract:
	@cd ${WRKSRC} && mv -f w9wm.1 w9wm.man

.include <bsd.port.mk>
