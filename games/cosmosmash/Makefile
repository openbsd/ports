# $OpenBSD: Makefile,v 1.1.1.1 2002/02/28 05:28:12 pvalchev Exp $

COMMENT=	"astrosmash clone for X"

VERSION=	1.1
DISTNAME=	cosmosmash-${VERSION}
CATEGORIES=	games
NEED_VERSION=	1.504

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/cosmosmash.html

MAINTAINER=	Sean Escriva <eliab@spack.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www3.sympatico.ca/sarrazip/dev/

BUILD_DEPENDS=	automake::devel/automake
LIB_DEPENDS=	gengameng.4.0::devel/gengameng

USE_X11=	Yes

CONFIGURE_STYLE= autoconf

.include <bsd.port.mk>
