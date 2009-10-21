# $OpenBSD: Makefile,v 1.14 2009/10/21 10:47:24 sthen Exp $

COMMENT=		GNU awk

V=			3.1.7
DISTNAME=		gawk-$V
PKGNAME=		${DISTNAME}p0
CATEGORIES=		lang

HOMEPAGE=		http://www.gnu.org/software/gawk/gawk.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gawk/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-libsigsegv
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		V

pre-build:
	@touch -r ${WRKSRC}/test/Makefile.am ${WRKSRC}/test/Maketests

.include <bsd.port.mk>
