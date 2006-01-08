# $OpenBSD: Makefile,v 1.2 2006/01/08 09:45:12 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to gettext() internationalization function"

DISTNAME=	gettext-1.03
PKGNAME=	p5-Locale-${DISTNAME}p0
CATEGORIES=	converters perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Locale/}

MODULES=	gettext

DIST_SUBDIR=	${PKGNAME}

NO_REGRESS= 	Yes

CONFIGURE_STYLE= perl

post-patch:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
