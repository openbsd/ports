# $OpenBSD: Makefile,v 1.12 2010/09/24 15:29:21 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.05
PKGNAME=	p5-Locale-${DISTNAME}
REVISION=	2
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES+=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
