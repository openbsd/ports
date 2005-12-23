#$OpenBSD: Makefile,v 1.9 2005/12/23 15:03:07 espie Exp $

CATEGORIES=	audio

COMMENT=	'AC-3 decoding library'
DISTNAME=	a52dec-0.7.4
PKGNAME=	liba52-0.7.4p0
MASTER_SITES=	http://liba52.sourceforge.net/files/
HOMEPAGE=	http://liba52.sourceforge.net/
SHARED_LIBS=	a52	0.0
MAKE_FLAGS=	liba52_la_LDFLAGS='-no-undefined -version-info ${LIBa52_VERSION:S/./:/}:0'

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
