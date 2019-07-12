# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:58 sthen Exp $

COMMENT=	GNU versions of the diff utilities

VERSION=	3.7
EXTRACT_SUFX=	.tar.xz
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}
CATEGORIES=	textproc
HOMEPAGE=	https://www.gnu.org/software/diffutils/
REVISION=	0

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl sigsegv

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/libsigsegv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/build-aux

# handle --program-prefix: the help-version test runs sdiff which calls
# out to gdiff, but it doesn't have that name until installed.
pre-test:
	cd ${WRKBUILD}/src; ln -fs diff gdiff

TEST_FLAGS=	HOME=/tmp

.include <bsd.port.mk>
