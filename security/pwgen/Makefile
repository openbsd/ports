# $OpenBSD: Makefile,v 1.1.1.1 2003/12/03 02:18:44 naddy Exp $

COMMENT=	"simple password generator"

DISTNAME=	pwgen-2.03
CATEGORIES=	security

MAINTAINER=	Robert Nagy <thuglife@bsd.hu>

HOMEPAGE=	http://sourceforge.net/projects/pwgen/

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=pwgen/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=autoconf
MAKE_FLAGS=	WALL_OPTS=""

NO_REGRESS=	Yes

pre-configure:
	@rm ${WRKSRC}/config.cache

.include <bsd.port.mk>
