# $OpenBSD: Makefile,v 1.1.1.1 2004/12/08 19:00:49 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to gettext() internationalization function"

DISTNAME=	gettext-1.03
PKGNAME=	p5-Locale-${DISTNAME}
CATEGORIES=	converters perl5

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

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
