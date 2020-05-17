# $OpenBSD: Makefile,v 1.40 2020/05/17 20:26:40 bcallah Exp $

COMMENT=	GNU awk

V=		5.1.0
DISTNAME=	gawk-$V
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}

HOMEPAGE=	https://www.gnu.org/software/gawk/
MAINTAINER=	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses gmp iconv intl m mpfr readline sigsegv

DEBUG_PACKAGES=	${BUILD_PACKAGES}

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/gmp \
		devel/libsigsegv \
		devel/mpfr

SUBST_VARS=	V

MAKE_ENV +=	RM="rm -f"

CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am
	@rm -rf ${WRKINST}/etc/profile.d

.include <bsd.port.mk>
