#$OpenBSD: Makefile,v 1.7 2004/07/31 18:54:24 naddy Exp $

CATEGORIES=	audio

COMMENT=	'AC-3 decoding library'
DISTNAME=	a52dec-0.7.4
PKGNAME=	liba52-0.7.4p0
MASTER_SITES=	http://liba52.sourceforge.net/files/
HOMEPAGE=	http://liba52.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autotools

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

.include <bsd.port.mk>
