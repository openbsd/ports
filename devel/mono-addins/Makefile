# $OpenBSD: Makefile,v 1.1.1.1 2008/10/17 06:55:19 robert Exp $

COMMENT=	Framework for creating extensible applications

DISTNAME=	mono-addins-0.3
CATEGORIES=	devel lang

HOMEPAGE=	http://www.mono-project.com/Mono.Addins

# MIT X11, MPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://www.go-mono.com/sources/mono-addins/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

MODULES=	lang/mono
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono \
		::x11/mono-gtk2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
