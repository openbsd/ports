# $OpenBSD: Makefile,v 1.25 2013/11/09 23:19:03 naddy Exp $

COMMENT=	GNU awk

V=		4.1.0
DISTNAME=	gawk-$V
REVISION=	0
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

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/lib/gawk/*.la
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3am
	mv ${PREFIX}/man/man3/*.3am ${PREFIX}/man/man3am

.include <bsd.port.mk>
