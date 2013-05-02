# $OpenBSD: Makefile,v 1.17 2013/05/02 13:21:16 sthen Exp $

COMMENT=	GNU versions of the diff utilities

VERSION=	3.3
EXTRACT_SUFX=	.tar.xz
DISTNAME=	diffutils-${VERSION}
PKGNAME=	gdiff-${VERSION}
CATEGORIES=	textproc
HOMEPAGE=	http://www.gnu.org/software/diffutils/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c sigsegv

MASTER_SITES=	${MASTER_SITE_GNU:=diffutils/}

MODULES=	devel/gettext
LIB_DEPENDS=	devel/libsigsegv

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
