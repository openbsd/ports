# $OpenBSD: Makefile,v 1.7 2002/09/07 20:57:08 naddy Exp $

COMMENT=	"interactive typing tutor"

DISTNAME=	gtypist-2.6.2
CATEGORIES=	education
HOMEPAGE=	http://www.gnu.org/software/gtypist/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gtypist/}

MODULES=	gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		MAKEINFO="makeinfo --no-split"

post-extract:
	@rm -f ${WRKSRC}/doc/gtypist.info*

.include <bsd.port.mk>
