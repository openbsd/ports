# $OpenBSD: Makefile,v 1.4 2005/11/03 18:28:56 naddy Exp $

COMMENT=	"simple password generator"

DISTNAME=	pwgen-2.03
CATEGORIES=	security

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_REGRESS=	Yes

pre-configure:
	@rm ${WRKSRC}/config.cache

.include <bsd.port.mk>
