# $OpenBSD: Makefile,v 1.2 2009/09/06 11:46:18 ajacoutot Exp $

COMMENT=	Visual Basic .NET support for Mono
DISTNAME=	mono-basic-2.4.2
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	lang
MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/mono-basic/

HOMEPAGE=	http://www.mono-project.com/Visual_Basic

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# LGPL v2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${TRUEPREFIX}"

.include <bsd.port.mk>
