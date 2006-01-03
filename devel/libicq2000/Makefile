# $OpenBSD: Makefile,v 1.11 2006/01/03 18:07:28 bernd Exp $

COMMENT=	"protocol icq2000/2001 library"

DISTNAME=	libicq2000-0.3.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		icq2000 5.1
MODGNU_SHARED_LIBS=	icq2000 ''

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
