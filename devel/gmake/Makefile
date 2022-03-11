COMMENT=	GNU make

DISTNAME=	make-4.3
PKGNAME=	g${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=make/}
EXTRACT_SUFX=	.tar.lz

HOMEPAGE=	https://www.gnu.org/software/make/

LIB_DEPENDS=	devel/gettext,-runtime

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --program-prefix="g" --without-guile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux

TEST_ENV=	SHELL=$$SHELL

# Known test failures:
# output-sync can fail due to a race condition in the test itself
# https://lists.gnu.org/archive/html/bug-make/2020-01/msg00075.html

.include <bsd.port.mk>
