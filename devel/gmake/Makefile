# $OpenBSD: Makefile,v 1.55 2016/04/05 19:16:20 naddy Exp $

COMMENT=	GNU make

DISTNAME=	make-4.1
PKGNAME=	g${DISTNAME}
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/make/

LIB_DEPENDS=	devel/gettext

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c iconv intl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g" --without-guile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

pre-test:
	@rm ${WRKSRC}/tests/scripts/features/*.orig

.include <bsd.port.mk>
