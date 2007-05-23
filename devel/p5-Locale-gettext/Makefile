# $OpenBSD: Makefile,v 1.7 2007/05/23 06:28:03 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	"interface to gettext() internationalization function"

MODULES=	cpan
DISTNAME=	gettext-1.05
PKGNAME=	p5-Locale-${DISTNAME}p0
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
