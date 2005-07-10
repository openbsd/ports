# $OpenBSD: Makefile,v 1.4 2005/07/10 15:08:05 couderc Exp $

COMMENT=		"library implementing the Unicode Bidirectional Algorithm"

DISTNAME=		fribidi-0.10.4
CATEGORIES=		devel

HOMEPAGE=		http://fribidi.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fribidi/}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
