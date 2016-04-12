# $OpenBSD: Makefile,v 1.34 2016/04/12 15:19:40 naddy Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.6
CATEGORIES=     	print
REVISION=		0

HOMEPAGE=		https://www.gnu.org/software/enscript/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=enscript/}

LIB_DEPENDS=		devel/gettext
WANTLIB=		c iconv intl m

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/enscript

.include <bsd.port.mk>
