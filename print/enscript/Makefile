# $OpenBSD: Makefile,v 1.37 2019/07/12 20:48:54 sthen Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.6
CATEGORIES=     	print
REVISION=		2

HOMEPAGE=		https://www.gnu.org/software/enscript/

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=enscript/}

LIB_DEPENDS=		devel/gettext,-runtime
WANTLIB=		c iconv intl m

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/enscript

.include <bsd.port.mk>
