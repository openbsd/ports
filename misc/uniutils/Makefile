# $OpenBSD: Makefile,v 1.2 2010/10/18 20:52:10 espie Exp $

COMMENT=	Unicode utilities

DISTNAME=	uniutils-2.27
CATEGORIES=	misc

HOMEPAGE=	http://billposer.org/Software/unidesc.html
MAINTAINER=	Nicholas Marriott <nicm@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MODULES=	devel/gettext

MASTER_SITES=	http://billposer.org/Software/Downloads/

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBS="-lintl -liconv"
		USE_GROFF =	Yes

.include <bsd.port.mk>
