# $OpenBSD: Makefile,v 1.5 2006/11/25 16:32:36 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to gettext() internationalization function"

MODULES=	cpan
DISTNAME=	gettext-1.03
PKGNAME=	p5-Locale-${DISTNAME}p0
CATEGORIES=	converters

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}

NO_REGRESS= 	Yes

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
