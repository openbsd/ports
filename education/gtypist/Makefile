# $OpenBSD: Makefile,v 1.2 2001/10/24 12:08:58 naddy Exp $

COMMENT=	"interactive typing tutor"

DISTNAME=	gtypist-2.4
CATEGORIES=	education
NEED_VERSION=	1.474
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gtypist

MODULE=	gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
