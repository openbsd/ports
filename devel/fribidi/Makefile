# $OpenBSD: Makefile,v 1.2 2004/01/11 16:45:51 couderc Exp $

COMMENT=		"Library implementing the Unicode Bidirectional Algorithm"

DISTNAME=		fribidi-0.10.4
CATEGORIES=		devel

HOMEPAGE=		http://fribidi.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fribidi/}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
