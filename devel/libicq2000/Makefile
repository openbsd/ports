# $OpenBSD: Makefile,v 1.4 2002/05/13 18:50:40 espie Exp $

COMMENT=	"protocol icq2000/2001 library"

DISTNAME=	libicq2000-0.3.1
CATEGORIES=	net
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libicq2000/}

HOMEPAGE=	http://libicq2000.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	sigc::devel/libsigc++

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
