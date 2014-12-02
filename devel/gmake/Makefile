# $OpenBSD: Makefile,v 1.54 2014/12/02 23:20:20 naddy Exp $

COMMENT=	GNU make

DISTNAME=	make-4.1
PKGNAME=	g${DISTNAME}
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/make/

MODULES=	devel/gettext

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g" --without-guile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

pre-test:
	@rm ${WRKSRC}/tests/scripts/features/*.orig

.include <bsd.port.mk>
