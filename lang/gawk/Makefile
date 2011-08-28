# $OpenBSD: Makefile,v 1.18 2011/08/28 11:15:39 sthen Exp $

COMMENT=	GNU awk

V=		4.0.0
DISTNAME=	gawk-$V
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
USE_GROFF=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
