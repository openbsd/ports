# $OpenBSD: Makefile,v 1.2 2002/06/08 06:03:09 pvalchev Exp $

COMMENT=	"Night Stalker clone for X"

VERSION=	1.0
DISTNAME=	afternoonstalker-${VERSION}
CATEGORIES=	games
NEED_VERSION=	1.504

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/afternoonstalker.html

MAINTAINER= 	Lurene Grenier <lurene@daemonkitty.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

AUTOCONF_NEW=           Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

BUILD_DEPENDS=	automake::devel/automake
LIB_DEPENDS=	gengameng.4.0::devel/gengameng

USE_X11=	Yes

CONFIGURE_STYLE= autoconf

.include <bsd.port.mk>
