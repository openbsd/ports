# $OpenBSD: Makefile,v 1.1.1.1 2002/04/21 03:19:52 pvalchev Exp $

COMMENT=	"protocol icq2000/2001 library"

DISTNAME=	libicq2000-0.3.0
CATEGORIES=	net
NEED_VERSION=	1.524
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= libicq2000

HOMEPAGE=	http://libicq2000.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	sigc::devel/libsigc++

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${WRKBUILD}/src/.libs -L${LOCALBASE}/lib"
CONFIGURE_ARGS= --with-gnome=no

.include <bsd.port.mk>
