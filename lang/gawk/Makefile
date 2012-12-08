# $OpenBSD: Makefile,v 1.21 2012/12/08 20:46:05 naddy Exp $

COMMENT=	GNU awk

V=		4.0.1
DISTNAME=	gawk-$V
REVISION=	0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=gawk/}

HOMEPAGE=	http://www.gnu.org/software/gawk/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
