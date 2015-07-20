# $OpenBSD: Makefile,v 1.33 2015/07/20 00:50:27 naddy Exp $

COMMENT=		convert ASCII files to PostScript

DISTNAME=		enscript-1.6.6
CATEGORIES=     	print

HOMEPAGE=		https://www.gnu.org/software/enscript/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=enscript/}

MODULES=		devel/gettext
WANTLIB=		c m

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/enscript

.include <bsd.port.mk>
