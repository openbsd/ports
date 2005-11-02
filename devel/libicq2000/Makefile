# $OpenBSD: Makefile,v 1.9 2005/11/02 20:44:56 wilfried Exp $

COMMENT=	"protocol icq2000/2001 library"

DISTNAME=	libicq2000-0.3.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libicq2000/}

HOMEPAGE=	http://libicq2000.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		pthread

LIB_DEPENDS=	sigc:libsigc++-1.*:devel/libsigc++

USE_LIBTOOL=	yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
