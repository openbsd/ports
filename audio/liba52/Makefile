#$OpenBSD: Makefile,v 1.8 2004/11/21 17:51:45 espie Exp $

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
SEPARATE_BUILD=		simple

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes
WANTLIB=		c m ossaudio

.include <bsd.port.mk>
