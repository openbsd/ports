# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:18 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	interface to gettext() internationalization function

MODULES=	cpan
DISTNAME=	gettext-1.05
PKGNAME=	p5-Locale-${DISTNAME}
REVISION=	4
CPAN_AUTHOR=	PVANDRY
CATEGORIES=	converters devel
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES+=	devel/gettext

DIST_SUBDIR=	p5-Locale-${DISTNAME}

pre-configure:
	@perl -pi -e 's#%%LOCALBASE%%#${LOCALBASE}#g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
