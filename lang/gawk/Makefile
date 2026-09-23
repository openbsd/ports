COMMENT=	GNU awk

V=		5.4.1
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
# Review on update:
# configure picks up xgettext and it is used during the build, but
# to no effect.
CONFIGURE_ENV+=	ac_cv_path_XGETTEXT=:
TEST_ENV=	PAGER=cat

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am
	rm -rf ${WRKINST}/etc/profile.d

.include <bsd.port.mk>
