# $OpenBSD: Makefile,v 1.10 2004/08/10 08:32:36 xsa Exp $

COMMENT=	"interactive typing tutor"

DISTNAME=	gtypist-2.7
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MAKEINFO="makeinfo --no-split"

.include <bsd.port.mk>
