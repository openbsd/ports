# $OpenBSD: Makefile,v 1.1.1.1 2001/08/01 20:41:07 naddy Exp $

COMMENT=	"interactive typing tutor"

DISTNAME=	gtypist-2.3.2
CATEGORIES=	education
NEED_VERSION=	1.433
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gtypist

LIB_DEPENDS=	intl.1::devel/gettext

CONFIGURE_STYLE= autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
