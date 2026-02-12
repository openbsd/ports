COMMENT=	GNU awk

V=		5.3.2
DISTNAME=	gawk-$V
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	lang
SITES=		${SITE_GNU:=gawk/}

HOMEPAGE=	https://www.gnu.org/software/gawk/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses gmp iconv intl m mpfr pthread readline

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/gmp \
		devel/mpfr

SUBST_VARS=	V

MAKE_ENV +=	RM="rm -f"

CONFIGURE_STYLE= gnu
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# "persistent memory archive" (which saves/loads heap) segfaults
CONFIGURE_ARGS=	--disable-pma

# known test failures:
#  "commas" due to not having a GNU extended printf format string.
#  "mpfrnegzero", "mpfrnegzero2" on aarch64: ?

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am
	rm -rf ${WRKINST}/etc/profile.d

.include <bsd.port.mk>
