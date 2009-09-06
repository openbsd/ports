# $OpenBSD: Makefile,v 1.1.1.1 2009/09/06 10:34:36 jolan Exp $

ONLY_FOR_ARCHS=	amd64 i386 powerpc

COMMENT=	Visual Basic .NET support for Mono
DISTNAME=	mono-basic-2.4.2
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
BUILD_DEPENDS=	::lang/mono
RUN_DEPENDS=	::lang/mono

CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--prefix="${LOCALBASE}"

.include <bsd.port.mk>
