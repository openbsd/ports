# $OpenBSD: Makefile,v 1.35 2017/05/08 09:46:52 schwarze Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.6
CATEGORIES=     	print
REVISION=		1

HOMEPAGE=		https://www.gnu.org/software/enscript/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=enscript/}

LIB_DEPENDS=		devel/gettext
WANTLIB=		c iconv intl m

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/enscript

.include <bsd.port.mk>
