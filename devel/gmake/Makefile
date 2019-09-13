# $OpenBSD: Makefile,v 1.63 2019/09/13 16:59:34 kurt Exp $

COMMENT=	GNU make

DISTNAME=	make-4.2.1
PKGNAME=	g${DISTNAME}
REVISION=	4
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/make/

LIB_DEPENDS=	devel/gettext,-runtime

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g" --without-guile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/config

pre-test:
	find ${WRKSRC}/tests/scripts -name \*.orig -delete

.include <bsd.port.mk>
