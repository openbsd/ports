# $OpenBSD: Makefile,v 1.28 2015/05/26 19:17:00 rpe Exp $

COMMENT=	GNU awk

V=		4.1.3
DISTNAME=	gawk-$V
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}

HOMEPAGE=	https://www.gnu.org/software/gawk/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c gmp m mpfr readline sigsegv termcap

MODULES=	devel/gettext
LIB_DEPENDS=	devel/gmp \
		devel/libsigsegv \
		devel/mpfr

SUBST_VARS=	V

MAKE_ENV +=	RM="rm -f"

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am

.include <bsd.port.mk>
