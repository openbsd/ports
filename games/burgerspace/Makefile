# $OpenBSD: Makefile,v 1.3 2001/12/28 21:51:08 pvalchev Exp $

COMMENT=	"burgertime clone for X"

VERSION=	1.6
DISTNAME=	burgerspace-${VERSION}
CATEGORIES=	games
NEED_VERSION=	1.502

HOMEPAGE=	http://www3.sympatico.ca/sarrazip/dev/burgerspace.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
