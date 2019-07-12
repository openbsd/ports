# $OpenBSD: Makefile,v 1.38 2019/07/12 20:47:18 sthen Exp $

COMMENT=	GNU awk

V=		5.0.0
DISTNAME=	gawk-$V
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}
REVISION=	0

HOMEPAGE=	https://www.gnu.org/software/gawk/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses gmp iconv intl m mpfr readline sigsegv

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/gmp \
		devel/libsigsegv \
		devel/mpfr

SUBST_VARS=	V

MAKE_ENV +=	RM="rm -f"

CONFIGURE_STYLE=gnu
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am
	@rm -rf ${WRKINST}/etc/profile.d

.include <bsd.port.mk>
