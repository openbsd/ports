# $OpenBSD: Makefile,v 1.23 2013/03/11 11:20:27 espie Exp $

COMMENT=	GNU awk

V=		4.0.1
DISTNAME=	gawk-$V
REVISION=	1
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}

HOMEPAGE=	http://www.gnu.org/software/gawk/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m readline sigsegv termcap

MODULES=	devel/gettext
LIB_DEPENDS=	devel/libsigsegv

SUBST_VARS=	V

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
REORDER_DEPENDENCIES=${FILESDIR}/automake.dep

.include <bsd.port.mk>
