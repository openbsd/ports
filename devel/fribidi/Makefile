# $OpenBSD: Makefile,v 1.9 2010/11/15 19:45:57 espie Exp $

COMMENT=		library implementing the Unicode Bidirectional Algorithm

DISTNAME=		fribidi-0.10.4
REVISION =		0
SHARED_LIBS +=	fribidi              0.0      # .0.0
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

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
