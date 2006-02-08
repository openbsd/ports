# $OpenBSD: Makefile,v 1.4 2006/02/08 04:54:49 david Exp $

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

DIST_SUBDIR=	p5-Locale-${DISTNAME}

NO_REGRESS= 	Yes

CONFIGURE_STYLE= perl

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
