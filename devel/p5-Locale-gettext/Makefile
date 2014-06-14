# $OpenBSD: Makefile,v 1.18 2014/06/14 23:24:57 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.05
PKGNAME=	p5-Locale-${DISTNAME}
REVISION=	5
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES+=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
